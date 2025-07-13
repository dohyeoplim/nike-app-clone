//
//  ShopView.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-12.
//

import SwiftUI

struct ShopView: View {
    @State var selectedCategory: ShopViewCategory? = .men
    var body: some View {
        VStack {
            ScrollView{
                ShopViewCategorySelector(selectedCategory: $selectedCategory)
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
