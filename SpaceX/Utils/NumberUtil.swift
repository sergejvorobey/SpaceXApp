//
//  NumberUtil.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 12.12.2022.
//

import Foundation

final class NumberUtil {
    
    class func rocketPrice(for cost: Int) -> NSNumber {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = Locale(identifier: "us_US")
        numberFormatter.numberStyle = .currencyAccounting
        
        let number = NSNumber(value: cost)
        return number
    }
    
    class func abbreviateNumber(num: Double) -> String {
        
        // less than 1000, no abbreviation
        if num < 1000 {
            return "\(num)"
        }
        
        // less than 1 million, abbreviate to thousands
        if num < 1000000 {
            var n = Double(truncating: num as NSNumber)
            n = Double(floor(n / 100) / 10)
            return "$\(n.description) к"
        }
        
        // more than 1 million, abbreviate to millions
        var n = Double(truncating: num as NSNumber)
        n = Double(floor(n / 100000) / 10)
        
        return "$\(n.description) млн"
    }
    
    class func intToDecimal(for value: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let number = NSNumber(value: value)
        return numberFormatter.string(from: number) ?? ""
    }
}
