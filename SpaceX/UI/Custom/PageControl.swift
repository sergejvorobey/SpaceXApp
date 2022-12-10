//
//  PageControl.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 09.12.2022.
//

import Foundation
import SwiftUI

struct PageControl: UIViewRepresentable {
    
    @Binding var page: Int
    var data: [Any]
    
    func makeUIView(context: Context) -> UIPageControl {
        let view = UIPageControl()
        view.currentPageIndicatorTintColor = .white
        view.pageIndicatorTintColor = .white.withAlphaComponent(0.5)
        view.numberOfPages = data.count
        return view
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        DispatchQueue.main.async {
            uiView.currentPage = self.page
        }
    }
}
