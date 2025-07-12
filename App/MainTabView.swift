//
//  MainTabView.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-12.
//

import SwiftUI

struct MainTabView: View {
    @StateObject private var coordinator = TabCoordinator()

    var body: some View {
        ZStack(alignment: .bottom) {
            contentView
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(.keyboard)
                .safeAreaInset(edge: .bottom) {
                    Spacer()
                        .frame(height: 82)
                }
            
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
            ShopView()
        case .favourites:
            FavouritesView()
        case .bag:
            BagView()
        case .profile:
            ProfileView()
        default:
            fatalError("Unknown tab selection")
        }
    }
}

#Preview {
    MainTabView()
}
