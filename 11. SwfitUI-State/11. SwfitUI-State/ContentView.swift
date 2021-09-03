//
//  ContentView.swift
//  11. SwfitUI-State
//
//  Created by 강현성 on 2021/09/03.
//  Copyright © 2021 Mirror. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var message: String = ""
    @State var activity: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                
                HStack {
                    Spacer()
                    // TextField에 값이 입력되면 뷰가 렌더링 됨
                    TextField("Message: ", text: $message)
                        .padding()
                    Spacer()
                }
                
                // 상태 바인딩을 통한 데이터 공유 - 하위 뷰를 이용할 때는 Binding 이용
                TextView(userName: $message)
                Text(message)
                
                Spacer()
                
                Text(activity == true ? "True" : "False")
                
                Button(action: {
                    self.activity.toggle()
                }) {
                    Text("값 바꾸기")
                }
                
                Spacer()
                
                HStack {
                    NavigationLink(destination: OtherView(message: $message, activity: $activity)) {
                        Text("다른 뷰로 이동")
                    }.onTapGesture {
                        self.activity.toggle()
                    }
                }
                
                Spacer()
            }
            
        }
        
    }
}

struct OtherView: View {
    @Binding var message: String
    @Binding var activity: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                
                HStack {
                    Spacer()
                    // TextField에 값이 입력되면 뷰가 렌더링 됨
                    TextField("Message2: ", text: $message)
                        .padding()
                    Spacer()
                }
                
                Text("넘어온 message: \(message)")
                Text(activity == true ? "True" : "False")
                
                Spacer()
                
                Button(action: {
                    self.activity.toggle()
                }) {
                    Text("값 바꾸기")
                }
                
            }
        }
    }
}

struct TextView: View {
    @Binding var userName: String
    
    var body: some View {
        Text(userName)
            .background(Color.red)
            .foregroundColor(Color.white)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
