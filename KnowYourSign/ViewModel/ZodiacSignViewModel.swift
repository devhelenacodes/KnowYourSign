//
//  ZodiacSignViewModel.swift
//  KnowYourSign
//
//  Created by Helena on 5/21/19.
//  Copyright © 2019 CS. All rights reserved.
//

import Foundation

class ZodiacSigns {
    static let shared = ZodiacSigns()
    
    var signs = [ZodiacSign]()
    var dateFormatter = DateFormatter()
    
    func addSigns() {
        signs.append(ZodiacSign(name: SignNames.Aries.rawValue, startDate: createDateFromComp(month: 3, day: 21), endDate: createDateFromComp(month: 4, day: 19)))
        signs.append(ZodiacSign(name: SignNames.Taurus.rawValue, startDate: createDateFromComp(month: 4, day: 20), endDate: createDateFromComp(month: 5, day: 20)))
        signs.append(ZodiacSign(name: SignNames.Gemini.rawValue, startDate: createDateFromComp(month: 5, day: 21), endDate: createDateFromComp(month: 6, day: 20)))
        signs.append(ZodiacSign(name: SignNames.Cancer.rawValue, startDate: createDateFromComp(month: 6, day: 21), endDate: createDateFromComp(month: 7, day: 22)))
        signs.append(ZodiacSign(name: SignNames.Leo.rawValue, startDate: createDateFromComp(month: 7, day: 23), endDate: createDateFromComp(month: 8, day: 22)))
        signs.append(ZodiacSign(name: SignNames.Virgo.rawValue, startDate: createDateFromComp(month: 8, day: 23), endDate: createDateFromComp(month: 9, day: 22)))
        signs.append(ZodiacSign(name: SignNames.Libra.rawValue, startDate: createDateFromComp(month: 9, day: 23), endDate: createDateFromComp(month: 10, day: 22)))
        signs.append(ZodiacSign(name: SignNames.Scorpio.rawValue, startDate: createDateFromComp(month: 10, day: 23), endDate: createDateFromComp(month: 11, day: 21)))
        signs.append(ZodiacSign(name: SignNames.Sagittarius.rawValue, startDate: createDateFromComp(month: 11, day: 22), endDate: createDateFromComp(month: 12, day: 21)))
        signs.append(ZodiacSign(name: SignNames.Capricorn.rawValue, startDate: createDateFromComp(month: 12, day: 22), endDate: createDateFromComp(month: 1, day: 19)))
        signs.append(ZodiacSign(name: SignNames.Aquarius.rawValue, startDate: createDateFromComp(month: 01, day: 20), endDate: createDateFromComp(month: 2, day: 18)))
        signs.append(ZodiacSign(name: SignNames.Pisces.rawValue, startDate: createDateFromComp(month: 02, day: 19), endDate: createDateFromComp(month: 3, day: 20)))
        
        
    }
    
    func createDateFromComp(month: Int, day: Int) -> Date {
        var currDateComp = DateComponents()
        let date = Date()
        
        if month > 0 && month < 13 {
            currDateComp.month = month
        }
        
        if day > 0 && day < 31 {
            currDateComp.day = day
        }
        
        let currDate = Calendar.current.date(from: currDateComp) ?? date
        
        return currDate
        
    }
}
