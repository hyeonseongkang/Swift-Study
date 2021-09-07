//
//  CarStore.swift
//  ListNavDemo
//
//  Created by 강현성 on 2021/07/07.
//  Copyright © 2021 Mirror. All rights reserved.
//

import SwiftUI
import Combine

class CarStore: ObservableObject {
    
    @Published var cars: [Car]
    
    init(cars: [Car] = []) {
        self.cars = cars
    }
}
