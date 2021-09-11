//
//  ContentView.swift
//  18. SwiftUI-ContextMenu
//
//  Created by 강현성 on 2021/09/11.
//  Copyright © 2021 Mirror. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var foregroundColor: Color = Color.black
    @State private var backgroundColor: Color = Color.white
    
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
        .padding()
        .foregroundColor(foregroundColor)
        .background(backgroundColor)
            .contextMenu() {
                Button(action: {
                    self.foregroundColor = .black
                    self.backgroundColor = .white
                }) {
                    Text("Normal Colors")
                    Image(systemName: "paintbrush")
                }
                
                Button(action: {
                    self.foregroundColor = .white
                    self.backgroundColor = .black
                }) {
                    Text("Inverted Colors")
                    Image(systemName: "paintbrush.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
