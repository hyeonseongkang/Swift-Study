//
//  Car.swift
//  ListNavDemo
//
//  Created by 강현성 on 2021/07/07.
//  Copyright © 2021 Mirror. All rights reserved.
//

import Foundation


struct Car : Codable, Identifiable {
    var id: String
    var name: String
    
    var description: String
    var isHybrid: Bool
    
    var imageName: String
    
}
