//
//  RocketDetail.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 05.12.2022.
//

import SwiftUI

struct RocketDetail: View {
    var viewModel: RocketDetailViewModel
    
    var body: some View {
        VStack(spacing: 16) {
            OneLineTwoText(text: "Первый запуск",
                           value: viewModel.rocket.firstFlight)
            OneLineTwoText(text: "Страна",
                           value: viewModel.rocket.country)
            OneLineTwoText(text: "Стоимость запуска",
                           value: "\(viewModel.rocket.costPerLaunch)")
            .padding(.bottom, 40)
            
            RocketStage(
                viewModel: RocketStageViewModel(
                    stageTitle: "Первая ступень",
                    engines: viewModel.rocket.firstStage.engines,
                    fuelAmountTons: viewModel.rocket.firstStage.fuelAmountTons,
                    burnTimeSEC: viewModel.rocket.firstStage.burnTimeSEC ?? 0))
            RocketStage(
                viewModel: RocketStageViewModel(
                    stageTitle: "Вторая ступень",
                    engines: viewModel.rocket.secondStage.engines,
                    fuelAmountTons: viewModel.rocket.secondStage.fuelAmountTons,
                    burnTimeSEC: viewModel.rocket.secondStage.burnTimeSEC ?? 0))
            
            Button {
                debugPrint("See downloads")
            } label: {
                Text("Посмотреть загрузки")
                    .frame(height: 28, alignment: .center)
                    .font(.headline.bold())
                    .padding()
                    .padding(.horizontal, 64)
                    .foregroundColor(.white)
            }
            .background(Color(red: 0.129, green: 0.129, blue: 0.129))
            .cornerRadius(10)
            .padding(.bottom, 20)
        }
        .frame(width: UIScreen.main.bounds.width)
    }
}

struct RocketDetail_Previews: PreviewProvider {
    static var previews: some View {
        RocketDetail(viewModel: RocketDetailViewModel(
            rocket: MockUtil.rocketsMock.first!)
        )
    }
}
