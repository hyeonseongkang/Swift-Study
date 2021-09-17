//
//  ContentView.swift
//  21. SwiftUI-SwiftUI+UIView
//
//  Created by 강현성 on 2021/09/16.
//  Copyright © 2021 Mirror. All rights reserved.
//

// git hub 이름 오류 commit

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollView(text: "UIView in SwiftUI")
    }
}
