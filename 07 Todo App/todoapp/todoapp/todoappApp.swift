//
//  todoappApp.swift
//  todoapp
//
//  Created by iSushant on 30/12/22.
//

import SwiftUI

@main
struct todoappApp: App {
    
    @StateObject var todosViewModel: TodosViewModel = TodosViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(todosViewModel)
        }
    }
}
