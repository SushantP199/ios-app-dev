//
//  TodoView.swift
//  todoapp
//
//  Created by iSushant on 01/01/23.
//

import SwiftUI

struct TodoView: View {
    
    @EnvironmentObject var todosViewModel: TodosViewModel
    
    let todo: TodoModel
    let actions: Bool
    
    var body: some View {
        HStack (alignment: .center, spacing: 15) {
            Image(systemName: todo.isCompleted ? "checkmark.seal.fill" : "xmark.seal")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(todo.isCompleted ? .green : .red)
            
            Text(todo.task)
                .font(.system(.headline))
                .multilineTextAlignment(.leading)
                
            Spacer()
            
            if actions {
                NavigationLink(destination: EditTodoView(todoModel: todo)) {
                    Image(systemName: "square.and.pencil")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 28, height: 28)
                        .foregroundColor(.black.opacity(0.8))
                }
                
                Button {
                    todosViewModel.deleteTodo(id: todo.id)
                } label: {
                    Image(systemName: "bin.xmark.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.red)
                }
            }
        }
        .padding()
        .frame(width: .infinity, height: .infinity)
        .background(Color("TodoTileColor"))
        .cornerRadius(10)
        .shadow(color: Color("TodoTileColor"), radius: 1, x: 1, y: 1)
        .onTapGesture {
            if !actions {
                withAnimation(.linear) {
                    todosViewModel.markUnmarkTodo(todo: todo)
                }
            }
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView(todo: .init(task: "Go to the gym"), actions: false)
    }
}
