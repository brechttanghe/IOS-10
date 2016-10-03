//
//  Utilities.swift
//  Back to the Future
//
//  Created by brecht tanghe on 1/10/16.
//  Copyright © 2016 brecht tanghe. All rights reserved.
//

import Foundation

class Utilities {
    
    func GetCurrentYear () -> String {
        let date = Date()
        let calendar = Calendar.current
        return String(calendar.component(.year, from: date))
    }
    
    func GetLetterAtIndex(str: String, location: Int) -> String {
        let index = str.index(str.startIndex, offsetBy: location)
        return String(str[index])
    }
    
    func GetCurrentTime() -> String {
        let date = Date()
        
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        
        let timeString = formatter.string(from: date)
        
        return timeString
    }
    
    func GetRandomYear() -> String{
        return String(arc4random_uniform(8999) + 1000)
    }
}
