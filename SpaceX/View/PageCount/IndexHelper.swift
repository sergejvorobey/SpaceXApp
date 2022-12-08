//
//  IndexHelper.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 07.12.2022.
//

import SwiftUI

//class IndexHelper: ObservableObject {
//
//    @Published var currentIndex: Int = 0
//
//    init(currentIndex: Int = 0) {
//        self.currentIndex = currentIndex
//    }
//}

protocol IndexService {}

extension IndexService {
    var indexManager: IndexHelper {
        return IndexHelper.shared
    }
}

class IndexHelper {
    
    static let shared = IndexHelper()
    
    var carouselIndex: Int = 0
}
