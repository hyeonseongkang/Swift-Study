//
//  ContentView.swift
//  20. SwiftUI-Gesture
//
//  Created by 강현성 on 2021/09/14.
//  Copyright © 2021 Mirror. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let longPress = LongPressGesture()
        .onEnded{ _ in
            print("Long Press")
            
    }
    
    // Long Press 인식하는 데 필요한  시간 조절
    let longPress2 = LongPressGesture(minimumDuration: 10, maximumDistance: 25)
        .onEnded{ _ in
            print("Long Press")
            
    }
    
    // onChange - 제스처가 처음 인식되었을 때 호출되며, 제스처가 끌날 때까지 제스처의 값이 변할 때마다 호출된다.
    let magnificationGesture = MagnificationGesture(minimumScaleDelta: 0)
        .onChanged( { _ in
            print("Magnifying")
        })
        .onEnded { _ in
            print("Gesture Ended")
        }
    
    var body: some View {
        
        VStack {
            Image(systemName: "hand.point.right.fill")
            .gesture(
            TapGesture()
                .onEnded{ _ in
                    print("Tap")
            })
            
            Text("Long Press")
            .gesture(longPress2)
            
            Text("onChange")
            .gesture(magnificationGesture)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
