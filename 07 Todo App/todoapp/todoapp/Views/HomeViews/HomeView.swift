//
//  HomeView.swift
//  todoapp
//
//  Created by iSushant on 31/12/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var todosViewModel: TodosViewModel
    
    @State var actions: Bool = false
    
    var body: some View {
        ZStack {
            VStack (spacing: 30) {
                GreetingView()
                
                VStack {
                   TodosTrackView()
                    
                    if todosViewModel.todos.isEmpty {
                        NoTodosView()
                        
                        Spacer()
                    } else {
                        TodosView(actions: actions)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
            .navigationBarHidden(true)
            
            if !todosViewModel.todos.isEmpty {
                HStack {
                    Spacer()
                    
                    Button {
                        self.actions = !self.actions
                    } label: {
                        Circle()
                            .fill(.white)
                            .frame(width: 70, height: 70)
                            .overlay(
                                Image(systemName: actions ? "rectangle.3.offgrid" : "rectangle.3.offgrid.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(Color("AccentColor"))
                                    .shadow(radius: 0)
                            )
                    }
                    .shadow(color: .black, radius: 2, y: 2)
               
                    NavigationLink(destination: AddTodoView()) {
                        Circle()
                            .fill(Color("AccentColor"))
                            .frame(width: 70, height: 70)
                            .overlay(
                                Image(systemName: "pencil")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.white)
                                    .shadow(radius: 0)
                            )
                            
                    }
                    .shadow(color: .black, radius: 2, y: 2)
                }
                .padding(.horizontal)
                .offset(x: 0, y: (UIScreen.main.bounds.height / 2) )
                .padding(.bottom, 150)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
