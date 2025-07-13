//
//  CardWithImageAndTextsConfig.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-13.
//

import Foundation
import SwiftUI

struct CardDataItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String?
    let subtitle: String?
}

struct CardSize {
    let imageSize: CGSize
    let titleFont: Font
    let subtitleFont: Font
    
    static let small = CardSize(
        imageSize: CGSize(width: 184, height: 184),
        titleFont: TextStyle.textMdBold.font,
        subtitleFont: TextStyle.textMdRegular.font,
    )
    
    static let medium = CardSize(
        imageSize: CGSize(width: 216, height: 216),
        titleFont: TextStyle.textMdBold.font,
        subtitleFont: TextStyle.textMdRegular.font,
    )
    
    static let large = CardSize(
        imageSize: CGSize(width: 314, height: 314),
        titleFont: TextStyle.textMdBold.font,
        subtitleFont: TextStyle.textMdRegular.font,
    )
}

enum CardLayout {
    case vertical, horizontal
}
