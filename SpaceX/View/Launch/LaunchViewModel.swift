//
//  LaunchViewModel.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 09.12.2022.
//

import Foundation
import SwiftUI

class LaunchViewModel {
    
    @Published var launches: [Launch] = []
    @State var rocket: Rocket
    
    init(rocket: Rocket) {
        self.rocket = rocket
        getLaunchesList()
    }
    
    func getLaunchesList() {
        LaunchAPI().loadLaunches { [weak self] loadedLaunches in
            self?.launches = loadedLaunches.filter { $0.rocket == self?.rocket.id }
            debugPrint(self?.launches)
        }
    }
}
