//
//  Colors.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-12.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex.replacingOccurrences(of: "#", with: ""))
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        let r = Double((rgb >> 16) & 0xff) / 255
        let g = Double((rgb >> 8) & 0xff) / 255
        let b = Double(rgb & 0xff) / 255
        self.init(red: r, green: g, blue: b)
    }
}

extension Color {
    static let black = Color(hex: "#000000")
    static let white = Color(hex: "#FFFFFF")
    
    static let gray100 = Color(hex: "#F6F6F6")
    static let gray200 = Color(hex: "#E4E4E4")
    static let gray300 = Color(hex: "#CDCDCD")
    static let gray400 = Color(hex: "#BABABA")
    static let gray500 = Color(hex: "#8C8C8C")
    static let gray600 = Color(hex: "#767676")
    static let gray700 = Color(hex: "#57595B")
    static let gray800 = Color(hex: "#1F1F1F")
    
    static let error500 = Color(hex: "#CA462A")
    
    static let success500 = Color(hex: "#2AA147")
    
    static let warning500 = Color(hex: "#FC5100")
    
    static let overlay500 = Color.black.opacity(0.5)
    static let overlay800 = Color.black.opacity(0.8)
}
