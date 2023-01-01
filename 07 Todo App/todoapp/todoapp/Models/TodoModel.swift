//
//  TodoModel.swift
//  todoapp
//
//  Created by iSushant on 31/12/22.
//

import Foundation

struct TodoModel: Identifiable, Codable {
    var id: String
    var isCompleted: Bool
    var task: String
    
    init (task: String) {
        self.id = UUID().uuidString
        self.isCompleted = false
        self.task = task
    }
}
