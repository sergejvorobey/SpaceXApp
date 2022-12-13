//
//  RocketDetailViewModel.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 07.12.2022.
//

import SwiftUI

class RocketDetailViewModel {
    
    @State var rocket: Rocket
    
    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    func setRocketDate() -> String {
        return DateUtil.rocketDateFormat(for: rocket.firstFlight)
    }
    
    func setRocketPrice() -> String {
        let a = NumberUtil.rocketPrice(for: rocket.costPerLaunch)
        return NumberUtil.abbreviateNumber(num: Double(truncating: a))
    }
}
