//
//  Launch.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 09.12.2022.
//

import Foundation

struct Launch: Codable, Hashable {
    let id: String
    let rocket: String
    let name: String
    let date: String?
    let success: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id
        case rocket
        case name
        case date = "date_utc"
        case success
    }
}
