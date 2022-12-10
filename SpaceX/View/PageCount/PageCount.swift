//
//  PageCount.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 05.12.2022.
//

import SwiftUI

struct PageCount: View {
    
    var viewModel: PageCountViewModel
    @Binding var currentIndex: Int
    
    private let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                let rockets = viewModel.rockets
                ForEach(rockets.indices, id: \.self) { index in
                    Circle()
                        .fill(.white)
                        .frame(width: 8, height: 8)
                        .opacity(currentIndex == index ? 1 : 0.3)
                        .scaleEffect(currentIndex == index ? 1.1 : 0.8)
                }
            }
        }
        .frame(width: screen.width, height: 75)
        .background(Color(red: 0.071, green: 0.071, blue: 0.071))
    }
}

struct PageCount_Previews: PreviewProvider {
    static var previews: some View {
        PageCount(viewModel: PageCountViewModel(
            rockets: MockUtil.rocketsMock),
                  currentIndex: .constant(0))
    }
}
