//
//  ToDoItem.swift
//  ToDoApp
//
//  Created by snapmac on 2/18/18.
//  Copyright © 2018 snapmac. All rights reserved.
//

import Foundation

struct TodoItem: Codable {
    var title: String
    var completed: Bool
    var createdAt: Date
    var itemId: UUID
    
    func saveItem(){
        
    }
    
    func deleteitem(){
        
    }
    
    func markAsCompleted(){
        
    }
    
}
