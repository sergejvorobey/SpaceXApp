//
//  ContentViewModel.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 07.12.2022.
//

import SwiftUI

class ContentViewModel {
    
    @State var rockets: [Rocket]
    
    init(rockets: [Rocket]) {
        self.rockets = rockets
    }
    
    func getRocketName(with page: Int) -> String {
        return rockets[page].name
    }
    
    func getRocket(with page: Int) -> Rocket {
        return rockets[page]
    }
}
