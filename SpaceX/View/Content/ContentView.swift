//
//  ContentView.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 05.12.2022.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    private let screen = UIScreen.main.bounds
    var viewModel: ContentViewModel
    
    @State var page = 0
    
    var body: some View {
        VStack {
            HStack {
                Text(viewModel.getRocketName(with: page))
                    .font(.title2.bold())
                    .foregroundColor(.white)
                Spacer()
                
                Button {
                    print("Setting button tapped!")
                } label: {
                    Image("Setting")
                }
            }
            .padding(.horizontal, 32)
            .padding(.top, 42)
            .padding(.bottom, 32)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    let rocket = viewModel.getRocket(with: page)
                    let idLeo = rocket.payloadWeights.first { $0.id == "leo" }
                    RocketInfo(viewoModel: RocketInfoModel(
                        name: "Высота, m",
                        value: "\(rocket.height.meters ?? 0.0)"))
                    RocketInfo(viewoModel: RocketInfoModel(
                        name: "Диаметр, m",
                        value: "\(rocket.diameter.meters ?? 0.0)"))
                    RocketInfo(viewoModel: RocketInfoModel(
                        name: "Масса, kg",
                        value: "\(rocket.mass.kg)"))
                    RocketInfo(viewoModel: RocketInfoModel(
                        name: "Нагрузка, kg",
                        value: "\(idLeo?.kg ?? 0)"))
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
        .frame(height: 850)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel(
            rockets: MockUtil.rocketsMock))
    }
}
