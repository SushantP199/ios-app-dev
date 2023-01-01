//
//  TodosTrackView.swift
//  todoapp
//
//  Created by iSushant on 02/01/23.
//

import SwiftUI

struct TodosTrackView: View {
    
    @EnvironmentObject var todosViewModel: TodosViewModel
    
    var completedTasks: Int {
        get {
            return todosViewModel.completedTask()
        }
    }
    
    var body: some View {
        HStack {
            HStack {
                Image("check-list")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50, alignment: .leading)
                
                Text("todos")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .semibold, design: .serif))
            }
            
            Spacer()
            
            VStack (alignment: .trailing, spacing: 0) {
                Text("\(completedTasks)% Done")
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                    .foregroundColor(.green)
                
                Text("Completed Tasks")
                    .font(.system(size: 15, weight: .regular, design: .rounded))
                    .opacity(0.7)
            }
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

struct TodosTrackView_Previews: PreviewProvider {
    static var previews: some View {
        TodosTrackView()
    }
}
