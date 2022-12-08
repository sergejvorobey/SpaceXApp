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
            MainView(viewModel: MainViewModel(rockets: MockUtil.rocketsMock))
        }
    }
}
