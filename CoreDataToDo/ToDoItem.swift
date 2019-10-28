//
//  ToDoItem.swift
//  CoreDataToDo
//
//  Created by Jan Hovland on 28/10/2019.
//  Copyright © 2019 Jan Hovland. All rights reserved.
//

// Samme navn på denne filen som datamodellen i CoreData

import Foundation
import CoreData

public class ToDoItem: NSManagedObject, Identifiable {
    @NSManaged public var createdAt: Date?
    @NSManaged public var title: String?
}

extension ToDoItem {
    static func getAllToDoItems() -> NSFetchRequest<ToDoItem> {
        let request: NSFetchRequest<ToDoItem> = ToDoItem.fetchRequest() as! NSFetchRequest<ToDoItem>
        
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
        
    }
}
