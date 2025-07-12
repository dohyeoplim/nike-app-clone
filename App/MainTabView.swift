//
//  MainTabView.swift
//  Nike
//
//  Created by 임도협 on 2025-07-12.
//

import SwiftUI

struct MainTabView: View {
    @StateObject private var coordinator = TabCoordinator()

    var body: some View {
        VStack(spacing: 0) {
            contentView
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TabBarView(
                selected: $coordinator.selected,
                items: TabBarItem.all
            )
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .environmentObject(coordinator)
    }

    @ViewBuilder
    private var contentView: some View {
        switch coordinator.selected {
        case .home:
            HomeView()
        case .shop:
            Text("Shop")
        case .favourites:
            Text("Favourites")
        case .bag:
            Text("Bag")
        case .profile:
            Text("Profile")
        default:
            fatalError("Unknown tab selection")
        }
    }
}
