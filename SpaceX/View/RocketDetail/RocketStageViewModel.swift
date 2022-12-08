//
//  RocketStageViewModel.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 07.12.2022.
//

import SwiftUI

class RocketStageViewModel {
    
    @State var stageTitle: String
    @State var engines: Int
    @State var fuelAmountTons: Double
    @State var burnTimeSEC: Int
    
    init(stageTitle: String, engines: Int, fuelAmountTons: Double, burnTimeSEC: Int) {
        self.stageTitle = stageTitle
        self.engines = engines
        self.fuelAmountTons = fuelAmountTons
        self.burnTimeSEC = burnTimeSEC
    }
}
