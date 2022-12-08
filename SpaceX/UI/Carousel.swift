//
//  Carousel.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 07.12.2022.
//

import Foundation
import SwiftUI
import UIKit


struct Carousel: UIViewRepresentable {
    
    var with: CGFloat
    var height: CGFloat
    @Binding var page: Int

    var data: [Rocket]
    
    func makeUIView(context: Context) -> UIScrollView {
        
        // Scroll view content size
        let total = with * CGFloat(data.count)
        let scrollView = UIScrollView()
        scrollView.isPagingEnabled = true
        scrollView.contentSize = CGSize(width: total, height: 1.0)
        scrollView.bounces = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.delegate = context.coordinator
        
        let view1 = UIHostingController(rootView: ContentCellView(viewModel: ContentCellViewModel(rockets: data)))
        view1.view.frame = CGRect(x: 0, y: 0, width: total, height: self.height)
        view1.view.backgroundColor = .clear

        scrollView.addSubview(view1.view)
        
        return scrollView
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Carousel.Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, UIScrollViewDelegate, IndexService {
        var parent: Carousel
        
        init(parent: Carousel) {
            self.parent = parent
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let page = Int(scrollView.contentOffset.x / UIScreen.main.bounds.width)
            self.parent.page = page
            indexManager.carouselIndex = page
        }
    }
}

