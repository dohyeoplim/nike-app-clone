//
//  TabCoordinator.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-12.
//

import Foundation

final class TabCoordinator: ObservableObject {
    @Published var selected: TabBarItem = .home

    func switchTo(_ tab: TabBarItem) {
        selected = tab
    }

    func resetCurrentTab() {}
}
