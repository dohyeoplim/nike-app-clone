//
//  ShopView.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-12.
//

import SwiftUI

struct ShopView: View {
    @State var selectedCategory: ShopCategory? = .men
    var body: some View {
        VStack {
            ScrollView{
                ShopCategorySelectorView(selectedCategory: $selectedCategory)
                
                ShopBestSellersView()
                
                
                VStack(spacing: 4) {
                    ShopBannerView(backgroundImage: "Shop/Banner/1", title: "New")
                    ShopBannerView(backgroundImage: "Shop/Banner/2", title: "Featured")
                }
                .padding(.vertical, 20)
            }
        }
        .padding(.top, 20)
        .navigationTitle("Shop")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Image(systemName: "magnifyingglass")
            }
        }
    }
}

#Preview {
    ShopStack()
}
