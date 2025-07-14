//
//  ShopCategoryModel.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-13.
//

import Foundation

enum ShopCategory: String, CaseIterable, Identifiable {
    var id: String { rawValue }
    case men = "Men"
    case women = "Women"
    case kids = "Kids"
}
