//
//  ContentCellView.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 07.12.2022.
//

import SwiftUI
import Combine

struct ContentCellView: View {
    
    var viewModel: ContentCellViewModel
    
    @State var page = 0
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(viewModel.rockets) { rocket in
                RocketDetail(viewModel: RocketDetailViewModel(rocket: rocket))
            }
        }
    }
}

struct ContentCellView_Previews: PreviewProvider {
    static var previews: some View {
        ContentCellView(viewModel: ContentCellViewModel(rockets: MockUtil.rocketsMock))
    }
}
