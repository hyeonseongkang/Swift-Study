//
//  ContentView.swift
//  19. SwiftUI-Animation
//
//  Created by 강현성 on 2021/09/12.
//  Copyright © 2021 Mirror. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Double = 0
    @State private var scale: CGFloat = 1
    
    @State private var isButtonVisible: Bool = true
    
    var body: some View {
        
        // exam 0
        VStack {
            Toggle(isOn: $isButtonVisible.animation(.linear(duration: 2))) {
                Text("Show/Hide Button")
            }
        .padding()
            
            if isButtonVisible {
                Button(action: {}) {
                    Text("Example Button")
                }
                .font(.largeTitle)
                .transition(.opacity)
                /*
                 .slide - 뷰가 슬라이딩하여 들어오거나 나간다.
                 .scale - 뷰의 크기가 커지면서 나타나고 작아지면서 사라진다.
                 .move(edge: edge) - 지정된 방향으로 뷰가 이동되며, 추가되거나 제거된다.
                 .move(edge: .top) - 뷰가 사라질 때는 밑에서 위로 움직이고, 뷰가 나타날 때는 위에서 아래로 움직인다.
                 .opacity - 디폴트 전환 효과로 페이드되는 동안 크기와 위치를 유지한다.
                 */
            }
        }
        
        
        /*
        // exam 1
        Button(action: {
            self.rotation = (self.rotation < 360 ? self.rotation + 60 : 0)
            self.scale = (self.scale < 2.8 ? self.scale + 0.3 : 1)
        }) {
            Text("Click to animate")
                .scaleEffect(scale)
                .rotationEffect(.degrees(rotation))
                .animation(.linear)
                /*
                 .linear - 지정된 시간 동안 일정한 속도로 애니메이션을 수행한다.
                 .easeOut - 빠른 속도로 애니메이션을 시작하여 애니메이션의 끝에 다다를수록 점점 느려진다.
                 .easeIn - 느린 속도로 애니메이션을 시작하여 애니메이션의 끝에 다다를수록 점점 빨라진다.
                 .easeInOut - 느린 속도로 애니메이션을 시작하여 점점 속도를 올리다가 애니메이션의 끝에 다다를수록 다시 속도가 느려진다.
                 
                 .linear(duration: 1)) -> 시간
                 */
         }
         */
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
