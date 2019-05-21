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
    
    func setSigns() {
        ZodiacSigns.shared.addSigns()
    }
    
    func getSign(from date: Date) -> String {
        
        let items = ZodiacSigns.shared.signs
        let total = items.count - 1
        let horoscope : String?
        var i = 0
        
        while i < total {
            if date >= items[i].startDate && date <= items[i].endDate {
                horoscope = items[i].name
                i = total
                return horoscope ?? "Pisces"
            }
            
            i = i + 1
        }
        
        return "Pisces"
    }
}
