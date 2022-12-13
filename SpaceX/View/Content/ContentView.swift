//
//  ContentView.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 05.12.2022.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    var viewModel: ContentViewModel
    private let screen = UIScreen.main.bounds
    private let rocketStorage = RocketStorage()
    
    @State var page = 0
    @State var isShowingSetting: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text(viewModel.getRocketName(with: page))
                    .font(.title2.bold())
                    .foregroundColor(.white)
                Spacer()
                
                Button {
                    isShowingSetting.toggle()
                } label: {
                    Image("Setting")
                }
            }
            .padding(.horizontal, 32)
            .padding(.top, 42)
            .padding(.bottom, 32)
            .sheet(isPresented: $isShowingSetting) {
                SettingView()
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    let rocket = viewModel.getRocket(with: page)
                    let idLeo = rocket.payloadWeights.first { $0.id == "leo" }
                    
                    RocketInfo(viewoModel: RocketInfoModel(
                        name: "Высота, \(rocketStorage.getSavedValue(for: .RocketHeight))",
                        value: viewModel.setRocketHeight(for: rocket)))
                    
                    RocketInfo(viewoModel: RocketInfoModel(
                        name: "Диаметр, \(rocketStorage.getSavedValue(for: .RocketDiameter))",
                        value: viewModel.setRocketDiameter(for: rocket)))
                    
                    RocketInfo(viewoModel: RocketInfoModel(
                        name: "Масса, \(rocketStorage.getSavedValue(for: .RocketWeight))",
                        value: viewModel.setRocketWeight(for: rocket)))
                    
                    RocketInfo(viewoModel: RocketInfoModel(
                        name: "Нагрузка, \(rocketStorage.getSavedValue(for: .RocketPayload))",
                        value: viewModel.setRocketPayload(for: idLeo)))
                }
                .padding(.horizontal, 32)
                .padding(.bottom, 32)
            }
            
            GeometryReader { reader in
                CarouselRockets(with: screen.width,
                                height: reader.frame(in: .global).height,
                                page: $page,
                                data: viewModel.rockets)
            }
        }
        .background(Color.black)
        .clipShape(CustomShape(corners: [.topLeft, .topRight], radius: 32))
        .frame(height: 865)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel(
            rockets: MockUtil.rocketsMock))
    }
}
