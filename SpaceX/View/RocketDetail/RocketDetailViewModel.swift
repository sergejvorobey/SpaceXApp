//
//  RocketDetailViewModel.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 07.12.2022.
//

import SwiftUI

class RocketDetailViewModel {
    
    @State var rocket: Rocket
    
    init(rocket: Rocket) {
        self.rocket = rocket
    }
}
