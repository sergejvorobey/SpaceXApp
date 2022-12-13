//
//  SettingView.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 13.12.2022.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Spacer()
                
                Text("Настройки")
                    .foregroundColor(.white)
                
                Spacer()
                
                Button {
                    debugPrint("Close")
                } label: {
                    Text("Закрыть")
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
            .padding(24)
            
            VStack(alignment: .leading, spacing: 24) {
                HStack {
                    Text("Высота")
                        .foregroundColor(.white)
                    Spacer()
                    Text("Высота")
                        .foregroundColor(.white)
                }
                
                HStack {
                    Text("Диаметр")
                        .foregroundColor(.white)
                    Spacer()
                    Text("Диаметр")
                        .foregroundColor(.white)
                }
                
                HStack {
                    Text("Масса")
                        .foregroundColor(.white)
                    Spacer()
                    Text("Масса")
                        .foregroundColor(.white)
                }
                
                HStack {
                    Text("Полезная нагрузка")
                        .foregroundColor(.white)
                    Spacer()
                    Text("Полезная нагрузка")
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 32)
            .padding(.horizontal, 28)
            
            Spacer()
        }
        .background(Color.black)
        .frame(width: UIScreen.main.bounds.width)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}


struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
