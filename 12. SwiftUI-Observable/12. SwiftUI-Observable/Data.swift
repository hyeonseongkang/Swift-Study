//
//  Data.swift
//  12. SwiftUI-Observable
//
//  Created by 강현성 on 2021/09/04.
//  Copyright © 2021 Mirror. All rights reserved.
//

import Foundation
import Combine

// 상속을 받아야 하므로 struct는 안됨
class Data: ObservableObject {
    
    @Published var userName: String = ""
    @Published var userAge: String = ""
    
    
    func updateData(userName: String, userAge: String) {
        self.userName = userName
        self.userAge = userAge
    }
}
