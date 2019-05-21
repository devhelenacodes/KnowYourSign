//
//  ZodiacSignModel.swift
//  KnowYourSign
//
//  Created by Helena on 5/21/19.
//  Copyright © 2019 CS. All rights reserved.
//

import Foundation

struct ZodiacSign : Decodable {
    let name : String
    let startDate : Date
    let endDate : Date
    
    init(name: String, startDate: Date, endDate: Date) {
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
    }
    /*
    private enum CodingKeys: String, CodingKey {
        case name
        case startDate
        case endDate
    }

    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let name = try container.decode(String.self, forKey: .name)
        let startDate = try container.decode(Date.self, forKey: .startDate)
        let endDate = try container.decode(Date.self, forKey: .endDate)
        
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
    }
    */
}
