//
//  CustomShape.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 05.12.2022.
//

import Foundation
import SwiftUI

struct CustomShape: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
