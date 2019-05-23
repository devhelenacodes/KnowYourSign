//
//  UserSignViewModel.swift
//  KnowYourSign
//
//  Created by Helena on 5/21/19.
//  Copyright © 2019 CS. All rights reserved.
//

import Foundation

internal final class UserSignViewModel {
    private var user = [User]()
    private var signs = [ZodiacSign]()
    
    func getSign(from date: Date) -> String {
        let items = ZodiacSigns.shared.signs
        let total = items.count - 1
        let horoscope : String?
        
        let newDate = Calendar.current.dateComponents([.month, .day], from: date)
        let currDate = Calendar.current.date(from: newDate) as Date?
        
        var i = 0
        while i < total {
            if currDate! >= items[i].startDate && currDate! <= items[i].endDate {
                horoscope = items[i].name
                i = total
                return horoscope ?? SignNames.Pisces.rawValue
            }
            i = i + 1
        }
        return SignNames.Pisces.rawValue
    }
    
    func setLabelString(name: String?, sign: String?) -> String {
        var newString : String?
        
        if name != "" {
            newString =  "Hello \(name!), "
        } else {
            newString =  "Hello Stranger, "
        }
        
        if sign != nil {
            newString = newString! + "your sun is in \(sign!)."
        } else {
            newString = newString! + "your sun is not yet revealed. Enter your birth date."
        }
        print("RUNS")

        return newString!
        
    }
    

}
