//
//  ContentView.swift
//  14. SwiftUI-List
//
//  Created by 강현성 on 2021/09/06.
//  Copyright © 2021 Mirror. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var toggleStatus = true
    
    var body: some View {
        
        NavigationView {
            List {
                Section(header: Text("Settings")) {
                    Toggle(isOn: $toggleStatus) {
                        Text("Allow Notifications")
                    }
                }
                
                Section(header: Text("To Do Tasks")) {
                    ForEach(listData) { item in
                        HStack {
                            NavigationLink(destination: Text(item.task)) {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }.onDelete(perform: deleteItem)
                     .onMove(perform: moveItem)
                }
            }
        }.navigationBarTitle(Text("To Do List"))
         .navigationBarItems(trailing: EditButton())
        
    }
    
    func deleteItem(at offsets: IndexSet) {
        
    }
    
    func moveItem(from source: IndexSet, to destination: Int) {
        
    }
}

struct ToDoItem: Identifiable {
    var id = UUID()
    var task: String
    var imageName: String
}

var listData: [ToDoItem] = [
    ToDoItem(task: "Take out trash", imageName: "trash.circle.fill"),
    ToDoItem(task: "Pick up the kids", imageName: "person.2.fill"),
    ToDoItem(task: "Wash the car", imageName: "car.fill")
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
