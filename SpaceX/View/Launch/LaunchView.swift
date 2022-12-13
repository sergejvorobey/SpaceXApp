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
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 16) {
                ForEach(viewModel.launches, id: \.self) { launch in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(launch.name)
                                .font(.title2)
                                .foregroundColor(.white)
                            Text(DateUtil.launchDateFormat(for: launch.date ?? ""))
                                .font(.callout)
                                .foregroundColor(.white)
                                .opacity(0.5)
                        }
                        Spacer()
                        Image(viewModel.setRocketIcon(for: launch))
                            .frame(width: 32, height: 32)
                            .foregroundColor(.white)
                    }
                    .padding(24)
                    .background(Color("Launch"))
                    .cornerRadius(24)
                    .padding(.horizontal, 24)
                }
            }
            .padding(.top, 40)
        }
        .clipped()
        .navigationBarTitle(viewModel.rocket.name, displayMode: .inline)
        .navigationBarColor(backgroundColor: .black, titleColor: .white)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem (placement: .navigation)  {
                Image(systemName: "arrow.left")
                    .foregroundColor(.white)
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                }
            }
        }
        .background(Color.black)
        .ignoresSafeArea(.container, edges: .bottom)
        .onAppear {
            viewModel.getLaunchesList()
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(viewModel: LaunchViewModel(
            rocket: MockUtil.rocketsMock.first!,
            launches: MockUtil.launchesMock))
    }
}
