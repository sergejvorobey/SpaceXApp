//
//  ContentViewModel.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 07.12.2022.
//

import SwiftUI

class ContentViewModel {
    
    @State var rockets: [Rocket]
    
    private let rocketStorage = RocketStorage()
   
    init(rockets: [Rocket]) {
        self.rockets = rockets
    }
    
    func getRocketName(with page: Int) -> String {
        return rockets[page].name
    }
    
    func getRocket(with page: Int) -> Rocket {
        return rockets[page]
    }
        
    func setRocketHeight(for rocket: Rocket) -> String {
        let unitValue = rocketStorage.getSavedValue(for: .RocketHeight)
        return unitValue == Unit.meter.name ? "\(rocket.height.meters ?? 0.0)" : "\(rocket.height.feet ?? 0.0)"
    }
    
    func setRocketDiameter(for rocket: Rocket) -> String {
        let unitValue = rocketStorage.getSavedValue(for: .RocketDiameter)
        return unitValue == Unit.meter.name ? "\(rocket.diameter.meters ?? 0.0)" : "\(rocket.diameter.feet ?? 0.0)"
    }
    
    func setRocketWeight(for rocket: Rocket) -> String {
        let unitValue = rocketStorage.getSavedValue(for: .RocketWeight)
        let value = unitValue == Unit.kilogramm.name ? rocket.mass.kg : rocket.mass.lb
        return NumberUtil.intToDecimal(for: value)
    }
    
    func setRocketPayload(for payloadWeight: PayloadWeight?) -> String {
        let unitValue = rocketStorage.getSavedValue(for: .RocketPayload)
        let value = unitValue == Unit.kilogramm.name ? payloadWeight?.kg ?? 0 : payloadWeight?.lb ?? 0
        return NumberUtil.intToDecimal(for: value)
    }
}
