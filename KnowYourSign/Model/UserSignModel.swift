//
//  UserSignModel.swift
//  KnowYourSign
//
//  Created by Helena on 5/21/19.
//  Copyright © 2019 CS. All rights reserved.
//

import Foundation

struct User : Decodable {
    let name: String
    let birthDate: Date
    
    init(name: String, birthDate: Date)  {
        self.name = name
        self.birthDate = birthDate
    }
    
}
