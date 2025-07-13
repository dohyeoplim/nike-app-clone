//
//  ShopViewBestSellersView.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-13.
//

import SwiftUI

struct ShopViewBestSellersView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 28) {
            Text("Must-Haves, Best Sellers & More")
                .font(TextStyle.displaySmMedium.font)
                .padding(.leading, 24)
            
            CarouselView(itemSpacing: 8, leadingPadding: 24) {
                CardWithImageAndTextsView(imageName: "Shop/BestSellers/1", title: "Best Sellers", subtitle: nil, size: .medium)
                
                CardWithImageAndTextsView(imageName: "Shop/BestSellers/2", title: "Featured in Nike Air", subtitle: nil, size: .medium)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, 24)
    }
}

#Preview {
    ShopViewBestSellersView()
}
