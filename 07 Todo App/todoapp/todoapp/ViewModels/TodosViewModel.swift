//
//  TodosViewModel.swift
//  todoapp
//
//  Created by iSushant on 31/12/22.
//

import Foundation

class TodosViewModel: ObservableObject {
    
    @Published var todos: [TodoModel] = [] {
        didSet {
            setTodos()
        }
    }
    
    let todosKey = "todos"
    
    init () {
        getTodos()
    }
    
    func setTodos () {
        if let dataEncoded = try? JSONEncoder().encode(todos) {
            UserDefaults.standard.set(dataEncoded, forKey: todosKey)
        }
    }
    
    func getTodos () {
        guard let data = UserDefaults.standard.data(forKey: todosKey) else { return }
        
        guard let dataDecoded = try? JSONDecoder().decode([TodoModel].self, from: data) else { return }
        
        todos = dataDecoded
    }
    
    func addTodo (todo: TodoModel) {
        todos.append(todo)
    }
    
    func editTodo (todo: TodoModel) {
        if let index = todos.firstIndex(where: {$0.id == todo.id}) {
            todos[index].task = todo.task
        }
    }
    
    func markUnmarkTodo (todo: TodoModel) {
        if let index = todos.firstIndex(where: { $0.id == todo.id }) {
            todos[index].isCompleted = !todo.isCompleted
        }
    }
    
    func deleteTodo (id: String) {
        if let index = todos.firstIndex(where: { $0.id == id }) {
            todos.remove(at: index)
        }
    }
    
    func completedTask () -> Int {
        let totalTasks: Int = todos.count
        
        if totalTasks == 0 {
            return 0
        }
        
        var completedTasks: Int = 0
        
        for task in todos {
            if task.isCompleted == true {
                completedTasks += 1
            }
        }
        
        let percentage: Double = (Double(completedTasks) / Double(totalTasks) ) * 100
        
        return Int(round(percentage))
    }
}
