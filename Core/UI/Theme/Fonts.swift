//
//  Fonts.swift
//  Nike
//
//  Created by 임도협 on 2025-07-12.
//

import Foundation
import SwiftUI

enum TextStyle {
    case display2xlRegular, display2xlMedium, display2xlBold
    case displayXlRegular, displayXlMedium, displayXlBold
    case displayLgRegular, displayLgMedium, displayLgBold
    case displayMdRegular, displayMdMedium, displayMdBold
    case displaySmRegular, displaySmMedium, displaySmBold
    case text2xlRegular, text2xlMedium, text2xlBold
    case text2xlRegularUnderline, text2xlMediumUnderline, text2xlBoldUnderline
    case textXlRegular, textXlMedium, textXlBold
    case textLgRegular, textLgMedium, textLgBold
    case textMdRegular, textMdMedium, textMdBold
    case textSmRegular, textSmMedium, textSmBold
    case textXsRegular, textXsMedium, textXsBold

    var font: Font {
        switch self {
            // Display
            case .display2xlRegular: return .system(size: 32, weight: .regular)
            case .display2xlMedium: return .system(size: 32, weight: .medium)
            case .display2xlBold: return .system(size: 32, weight: .bold)

            case .displayXlRegular: return .system(size: 28, weight: .regular)
            case .displayXlMedium: return .system(size: 28, weight: .medium)
            case .displayXlBold: return .system(size: 28, weight: .bold)

            case .displayLgRegular: return .system(size: 28, weight: .regular)
            case .displayLgMedium: return .system(size: 28, weight: .medium)
            case .displayLgBold: return .system(size: 28, weight: .bold)

            case .displayMdRegular: return .system(size: 24, weight: .regular)
            case .displayMdMedium: return .system(size: 24, weight: .medium)
            case .displayMdBold: return .system(size: 24, weight: .bold)

            case .displaySmRegular: return .system(size: 20, weight: .regular)
            case .displaySmMedium: return .system(size: 20, weight: .medium)
            case .displaySmBold: return .system(size: 20, weight: .bold)

            // Text 2XL
            case .text2xlRegular: return .system(size: 16, weight: .regular)
            case .text2xlMedium: return .system(size: 16, weight: .medium)
            case .text2xlBold: return .system(size: 16, weight: .bold)

            case .text2xlRegularUnderline: return .system(size: 16, weight: .regular)
            case .text2xlMediumUnderline: return .system(size: 16, weight: .medium)
            case .text2xlBoldUnderline: return .system(size: 16, weight: .bold)

            // Text XL
            case .textXlRegular: return .system(size: 16, weight: .regular)
            case .textXlMedium: return .system(size: 16, weight: .medium)
            case .textXlBold: return .system(size: 16, weight: .bold)

            // Text LG
            case .textLgRegular: return .system(size: 16, weight: .regular)
            case .textLgMedium: return .system(size: 16, weight: .medium)
            case .textLgBold: return .system(size: 16, weight: .bold)

            // Text MD
            case .textMdRegular: return .system(size: 14, weight: .regular)
            case .textMdMedium: return .system(size: 14, weight: .medium)
            case .textMdBold: return .system(size: 14, weight: .bold)

            // Text SM
            case .textSmRegular: return .system(size: 12, weight: .regular)
            case .textSmMedium: return .system(size: 12, weight: .medium)
            case .textSmBold: return .system(size: 12, weight: .bold)

            // Text XS
            case .textXsRegular: return .system(size: 10, weight: .regular)
            case .textXsMedium: return .system(size: 10, weight: .medium)
            case .textXsBold: return .system(size: 10, weight: .bold)
        }
    }
}
