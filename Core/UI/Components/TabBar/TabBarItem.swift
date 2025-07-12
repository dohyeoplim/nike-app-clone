//
//  TabBarItem.swift
//  Nike
//
//  Created by 임도협 on 2025-07-12.
//

import Foundation

struct TabBarItem: Hashable {
    let title: String
    let icon: String
    let index: Int
}

extension TabBarItem {
    static let home = TabBarItem(title: "Home", icon: "house", index: 0)
    static let shop = TabBarItem(title: "Shop", icon: "magnifyingglass", index: 1)
    static let favourites = TabBarItem(title: "Favourites", icon: "heart", index: 2)
    static let bag = TabBarItem(title: "Bag", icon: "bag", index: 3)
    static let profile = TabBarItem(title: "Profile", icon: "person", index: 4)

    static let all: [TabBarItem] = [.home, .shop, .favourites, .bag, .profile]
}
