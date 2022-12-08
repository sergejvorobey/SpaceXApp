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
    
    var body: some View {
        HStack(spacing: 5) {
            Text(text)
                .foregroundColor(.white)
            Spacer()
            Text(value)
                .foregroundColor(.white)
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
