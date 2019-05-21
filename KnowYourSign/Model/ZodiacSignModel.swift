//
//  ZodiacSignModel.swift
//  KnowYourSign
//
//  Created by Helena on 5/21/19.
//  Copyright © 2019 CS. All rights reserved.
//

import Foundation


public enum SignNames : String {
    case Aries = "Aries"
    case Taurus = "Taurus"
    case Gemini = "Gemini"
    case Cancer = "Cancer"
    case Leo = "Leo"
    case Virgo = "Virgo"
    case Libra = "Libra"
    case Scorpio = "Scorpio"
    case Sagittarius = "Sagittarius"
    case Capricorn = "Capricorn"
    case Aquarius = "Aquarius"
    case Pisces = "Pisces"
}


struct ZodiacSign : Decodable {
    let name : String
    let startDate : Date
    let endDate : Date
    
    init(name: String, startDate: Date, endDate: Date) {
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
    }

}
