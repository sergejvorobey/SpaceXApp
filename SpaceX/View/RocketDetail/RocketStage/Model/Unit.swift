//
//  Unit.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 13.12.2022.
//

import Foundation

enum Unit {
    case meter
    case feet
    case kilogramm
    case lb
    case ton
    case sec
    
    var name: String {
        switch self {
        case .meter: return "m"
        case .feet: return "ft"
        case .kilogramm: return "kg"
        case .lb: return "lb"
        case .ton: return "ton"
        case .sec: return "sec"
        }
    }
}

enum RocketUnit: String {
    case RocketHeight
    case RocketDiameter
    case RocketWeight
    case RocketPayload
    case RocketFuelWeight
    case RocketBurnTime
    
    var defaultValue: String {
        switch self {
        case .RocketHeight: return Unit.meter.name
        case .RocketDiameter: return Unit.meter.name
        case .RocketWeight: return Unit.kilogramm.name
        case .RocketPayload: return Unit.kilogramm.name
        case .RocketFuelWeight: return Unit.ton.name
        case .RocketBurnTime: return Unit.sec.name
        }
    }
}

final class RocketStorage {
    func getSavedValue(for rocketUnit: RocketUnit) -> String {
        guard let value = StorageUtil.load(rocketUnit.rawValue) as? String else {
            return rocketUnit.defaultValue
        }
        return  value
    }
    
    func setValue(for rocketUnit: RocketUnit, value: Unit) {
        StorageUtil.save(value, key: rocketUnit.rawValue)
    }
}
