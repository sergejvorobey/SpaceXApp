//
//  OneLineText.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 05.12.2022.
//

import SwiftUI

struct OneLineText: View {
    
    @State var text: String = "text"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .font(.title3.bold())
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 32)
        .background(Color.black)
    }
}

struct OneLineText_Previews: PreviewProvider {
    static var previews: some View {
        OneLineText()
    }
}
