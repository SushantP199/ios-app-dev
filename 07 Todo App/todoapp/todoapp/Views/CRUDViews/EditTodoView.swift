//
//  EditTodoView.swift
//  todoapp
//
//  Created by iSushant on 01/01/23.
//

import SwiftUI

struct EditTodoView: View {
    @EnvironmentObject var todosViewModel: TodosViewModel
    @Environment(\.dismiss) private var dismiss
    
    @State var todo: String = ""
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    
    var todoModel: TodoModel
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack {
                Image("to-do-list")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250)
                    .padding([.top, .bottom], 50)
                    .onAppear {
                        self.todo = todoModel.task
                    }
            
                TextField("Enter your task", text: $todo)
                    .padding()
                    .frame(width: .infinity, height: 60)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                    .foregroundColor(.black)
                
                Button(action: saveTodo) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.accentColor)
                        .overlay(
                            Text("Save")
                                .foregroundColor(.white)
                                .font(.system(.title))
                        )
                }
                .frame(width: .infinity, height: 60)
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Circle()
                        .fill(Color.accentColor)
                        .frame(width: 50, height: 50, alignment: .center)
                        .overlay(
                            Image(systemName: "chevron.left")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 25)
                                .foregroundColor(.white)
                        )
                }
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal)
            .navigationBarHidden(true)
            .alert(isPresented: $showAlert, content: displayAlert)
        }
    }
    
    func saveTodo() {
        if todo.count < 3 || todo.isEmpty {
            showAlert = true
            alertTitle = "task should be at least of 3 non empty characters"
        } else {
            var todo: TodoModel = TodoModel(task: "")
            
            todo.id = todoModel.id
            todo.task = self.todo
            todo.isCompleted = todoModel.isCompleted
            
            todosViewModel.editTodo(todo: todo)
            dismiss()
        }
    }
    
    func displayAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct EditTodoView_Previews: PreviewProvider {
    static var previews: some View {
        EditTodoView(todoModel: .init(task: ""))
    }
}
