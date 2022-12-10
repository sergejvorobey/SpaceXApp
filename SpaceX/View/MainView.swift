//
//  MainView.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 05.12.2022.
//

import SwiftUI

struct MainView: View {
    
    var viewModel: MainViewModel
    
    private let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            ZStack {
                GeometryReader { _ in
                    Image("Rocket")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    Spacer(minLength: screen.height / 3)
                    ContentView(viewModel: ContentViewModel(
                        rockets: viewModel.rockets))
                }
            }
            
            PageCount(viewModel: PageCountViewModel(
                rockets: viewModel.rockets),
                      currentIndex: .constant(0))
            
//            VStack {
//                PageControl(page: .constant(0),//$carouselSetting.index,
//                            data: viewModel.rockets)
//            }
//            .frame(width: screen.width, height: 75)
//            .background(Color(red: 0.071, green: 0.071, blue: 0.071))
        }
        .ignoresSafeArea(.container, edges: .vertical)
        .background(Color.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: MainViewModel(rockets: MockUtil.rocketsMock))
    }
}
