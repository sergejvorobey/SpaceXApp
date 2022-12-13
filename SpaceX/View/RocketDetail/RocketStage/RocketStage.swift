//
//  RocketStage.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 05.12.2022.
//

import SwiftUI

struct RocketStage: View {
    
    var viewModel: RocketStageViewModel
    
    private let rocketStorage = RocketStorage()
    
    var body: some View {
        VStack(spacing: 16) {
            OneLineText(text: viewModel.stageTitle)
            OneLineTwoText(text: "Количество двигателей",
                           value: "\(viewModel.engines)")
            OneLineTwoText(text: "Количество топлива",
                           value: "\(viewModel.fuelAmountTons)",
                           addintionallyIsActive: true,
                           addintionallyText: rocketStorage.getSavedValue(for: .RocketFuelWeight))
            OneLineTwoText(text: "Время сгорания",
                           value: "\(viewModel.burnTimeSEC)",
                           addintionallyIsActive: true,
                           addintionallyText: rocketStorage.getSavedValue(for: .RocketBurnTime))
            .padding(.bottom, 40)
        }
    }
}

struct RocketStage_Previews: PreviewProvider {
    static var previews: some View {
        RocketStage(viewModel: RocketStageViewModel(stageTitle: "Text",
                                                    engines: 0,
                                                    fuelAmountTons: 0.0,
                                                    burnTimeSEC: 0))
    }
}
