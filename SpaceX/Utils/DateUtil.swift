//
//  DateUtil.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 12.12.2022.
//

import Foundation

final class DateUtil {
    
    class func launchDateFormat(for launchDate: String) -> String {
        let strToDate = DateUtil.launchToDate(for: launchDate)
        let dateFomatter = DateFormatter()
        dateFomatter.dateFormat = "dd MMMM, yyyy"
        let dateToStr = dateFomatter.string(from: strToDate)
        return dateToStr
    }
    
    class func launchToDate(for launchDate: String) -> Date {
        let dateFomatter = DateFormatter()
        dateFomatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return dateFomatter.date(from: launchDate) ?? Date()
    }
    
    class func rocketDateFormat(for rocketDate: String) -> String {
        let dateFomatter = DateFormatter()
        dateFomatter.dateFormat = "yyyy-MM-dd"
        let strToDate = dateFomatter.date(from: rocketDate) ?? Date()
        dateFomatter.dateFormat = "dd MMMM, yyyy"
        dateFomatter.locale = Locale.current
        let dateToStr = dateFomatter.string(from: strToDate)
        return dateToStr
    }
}
