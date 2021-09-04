//
//  ContentView.swift
//  12. SwiftUI-Observable
//
//  Created by 강현성 on 2021/09/03.
//  Copyright © 2021 Mirror. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var data: Data = Data()
    
    @State var userName: String = ""
    @State var userAge: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
                HStack {
                    Spacer()
                    
                    Text("첫 번째 뷰")
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(Color.green)
                    Spacer()
                }
                
                
                TextField("userName: ", text: $userName)
                    .padding([.trailing, .leading], 30)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("userAge: ", text: $userAge)
                    .padding([.trailing, .leading], 30)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    self.data.updateData(userName: self.userName, userAge: self.userAge)
                }) {
                    Text("업데이트")
                }.padding(.top, 10)
                
                
                Text("userName: \(data.userName)    userAge: \(data.userAge)")
                    .padding(.top, 20)
                
                NavigationLink(destination: OtherView(data: data)) {
                    Text("뷰 이동")
                }.padding(.top, 50)
            }
        }
    }
}

struct OtherView: View {
    
    @ObservedObject var data: Data
    
    @State var userName: String = ""
    @State var userAge: String = ""
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                
                Text("두 번째 뷰")
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(Color.purple)
                Spacer()
            }
            
            TextField("userName: ", text: $userName)
                .padding([.trailing, .leading], 30)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("userAge: ", text: $userAge)
                .padding([.trailing, .leading], 30)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                self.data.updateData(userName: self.userName, userAge: self.userAge)
            }) {
                Text("업데이트")
            }.padding(.top, 10)
            
            
            Text("userName: \(data.userName)    userAge: \(data.userAge)")
                .padding(.top, 20)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
