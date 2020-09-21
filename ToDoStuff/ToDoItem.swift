//
//  ToDoItem.swift
//  ToDoStuff
//
//  Created by Antonio on 2020-09-20.
//  Copyright © 2020 AntonioMerendaz. All rights reserved.
//

import Foundation
struct ToDoItem : Codable{
    var title:String
    var completed:Bool
    var createdAt:Date
    var itemIdentifier:UUID
    
    func saveItem() {
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
    func deleteItem() {
        DataManager.deleteItem(itemIdentifier.uuidString)
    }
    
    mutating func markAsCompleted() {
        self.completed = true
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
}

