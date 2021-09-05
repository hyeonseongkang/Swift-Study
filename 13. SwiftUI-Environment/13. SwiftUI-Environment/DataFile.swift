//
//  DataFile.swift
//  13. SwiftUI-Environment
//
//  Created by 강현성 on 2021/09/05.
//  Copyright © 2021 Mirror. All rights reserved.
//

import Foundation
import Combine

class DataFile: ObservableObject {
    
    @Published var timeCount = 0
    var timer: Timer?
    
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(timerDidFire),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func timerDidFire() {
        timeCount += 1
    }
    
    func resetCount() {
        timeCount = 0
    }
    
}
