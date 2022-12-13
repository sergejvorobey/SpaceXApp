//
//  SpaceXApp.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 05.12.2022.
//

import SwiftUI

@main
struct SpaceXApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MainView(viewModel: MainViewModel(rockets: MockUtil.rocketsMock))
            }
            .ignoresSafeArea()
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
