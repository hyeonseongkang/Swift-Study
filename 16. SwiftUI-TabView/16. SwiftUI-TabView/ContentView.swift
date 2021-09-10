//
//  ContentView.swift
//  16. SwiftUI-TabView
//
//  Created by 강현성 on 2021/09/09.
//  Copyright © 2021 Mirror. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 3
    @State private var message: String = ""
    
    var body: some View {
        TabView(selection: $selection) {
            // SubView()
            View1(message: $message)
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("View1")
            }.tag(1)
           
            Text("View2")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("View2")
            }.tag(2)
            
             // SubView()
            View3(message: $message)
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("View3")
            }.tag(3)
            
            
        }.font(.largeTitle)
        
    }
}

struct View1: View {
    
    @Binding var message: String
       
    var body: some View {
        VStack {
            Text("View1")
            Text(message)
            Button(action: {
                self.message = "View1"
            }) {
                Text("Change Text")
            }
        }
    }
}

struct View3: View {
    
    @Binding var message: String
    
    var body: some View {
        VStack {
            Text("View3")
            Text(message)
            Button(action: {
                self.message = "View3"
            }) {
                Text("Change Text")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
