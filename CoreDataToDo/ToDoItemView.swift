//
//  ToDoItemView.swift
//  CoreDataToDo
//
//  Created by Jan Hovland on 28/10/2019.
//  Copyright © 2019 Jan Hovland. All rights reserved.
//

import SwiftUI

struct ToDoItemView: View {
    var title: String = ""
    var createdAt: String = ""
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text(createdAt)
                    .font(.headline)
            }
        }
    }
}
