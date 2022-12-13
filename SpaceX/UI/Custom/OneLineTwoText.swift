//
//  OneLineTwoText.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 05.12.2022.
//

import SwiftUI

struct OneLineTwoText: View {
    
    @State var text: String = "text"
    @State var value: String = "value"
    @State var addintionallyIsActive: Bool = false
    @State var addintionallyText: String = "ton"
    
    var body: some View {
        HStack(spacing: 5) {
            Text(text)
                .foregroundColor(.white)
            Spacer()
            Text(value)
                .foregroundColor(.white)
                .font(.headline)
            if addintionallyIsActive {
                Text(addintionallyText)
                    .foregroundColor(.white)
                    .opacity(0.5)
            }
        }
        .padding(.horizontal, 32)
        .background(Color.black)
    }
}

struct OneLineTwoText_Previews: PreviewProvider {
    static var previews: some View {
        OneLineTwoText()
    }
}
