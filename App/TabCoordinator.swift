//
//  TabCoordinator.swift
//  Nike
//
//  Created by 임도협 on 2025-07-12.
//

import Foundation

final class TabCoordinator: ObservableObject {
    @Published var selected: TabBarItem = .home

    func switchTo(_ tab: TabBarItem) {
        selected = tab
    }

    func resetCurrentTab() {}
}
