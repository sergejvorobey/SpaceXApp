//
//  RocketInfo.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 05.12.2022.
//

import SwiftUI

struct RocketInfo: View {
    
    var viewoModel: RocketInfoModel
    
    var body: some View {
        VStack(spacing: 4) {
            Text(viewoModel.value)
                .font(.title2).bold()
                .foregroundColor(.white)
            Text(viewoModel.name)
                .font(.caption)
                .foregroundColor(.white).opacity(0.7)
        }
        .frame(width: 96, height: 96)
        .background(Color.init(red: 0.129, green: 0.129, blue: 0.129))
        .cornerRadius(32)
    }
}

struct RocketInfo_Previews: PreviewProvider {
    static var previews: some View {
        RocketInfo(viewoModel: RocketInfoModel(
            name: "Высота, m",
            value: "\(MockUtil.rocketsMock.first!.height.meters ?? 0.0)"))
    }
}
