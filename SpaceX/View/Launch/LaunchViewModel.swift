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
    
    init(rocket: Rocket, launches: [Launch] = []) {
        self.rocket = rocket
        self.launches = launches
    }
    
    func getLaunchesList() {
        LaunchAPI().loadLaunches { [weak self] loadedLaunches in
            self?.launches = loadedLaunches
                .filter { $0.rocket == self?.rocket.id }
                .sorted { DateUtil.launchToDate(for: $0.date ?? "") >
                          DateUtil.launchToDate(for: $1.date ?? "") }
        }
    }
    
    func setRocketIcon(for launch: Launch) -> String {
        let imageName = launch.success == true ? "rocket-success" : "rocket-failed"
        return imageName
    }
}
