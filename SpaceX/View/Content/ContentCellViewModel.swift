//
//  ContentCellViewModel.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 07.12.2022.
//

import SwiftUI

class ContentCellViewModel {
    
    @State var rockets: [Rocket]
    
    init(rockets: [Rocket]) {
        self.rockets = rockets
    }
}
