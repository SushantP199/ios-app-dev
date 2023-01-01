//
//  TodosView.swift
//  todoapp
//
//  Created by iSushant on 01/01/23.
//

import SwiftUI

struct TodosView: View {
    
    @EnvironmentObject var todosViewModel: TodosViewModel
    
    let actions: Bool
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(todosViewModel.todos) { todo in
                    TodoView(todo: todo, actions: actions)
                }
                Spacer(minLength: 120)
            }
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TodosView_Previews: PreviewProvider {
    static var previews: some View {
        TodosView(actions: false)
    }
}
