//
//  MainViewModel.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 06.12.2022.
//

import Foundation
import SwiftUI

class MainViewModel {
    @Published var rockets: [Rocket] = []

    init(rockets: [Rocket]) {
        self.rockets = rockets
        getRocketList()
    }
    
    func getRocketList() {
        RocketAPI().loadRockets { [weak self] rockets in
            self?.rockets = rockets
        }
    }
}
