//
//  PageCountViewModel.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 07.12.2022.
//

import SwiftUI

class PageCountViewModel {
    
    @State var rockets: [Rocket]
    @State var page: Int
    
    init(rockets: [Rocket], page: Int) {
        self.rockets = rockets
        self.page = page
    }
}
