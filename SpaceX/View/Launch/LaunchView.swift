//
//  LaunchView.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 09.12.2022.
//

import SwiftUI

struct LaunchView: View {
    
    var viewModel: LaunchViewModel
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(viewModel: LaunchViewModel(rocket: MockUtil.rocketsMock.first!))
    }
}
