//
//  WhatsNewCarousel.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-12.
//

import SwiftUI

struct WhatsNewCarousel: View {
    private let items = Array(1...5)

    var body: some View {
        let cardWidth: CGFloat = 319
        let cardSpacing: CGFloat = 6
        let leadingPadding: CGFloat = 24

        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: cardSpacing) {
                ForEach(items, id: \.self) { index in
                    WhatsNewCarouselItem(
                        productImage: "Product/1",
                        productName: "Air Jordan XXXVI",
                        productPrice: "$185"
                    )
                    .frame(width: cardWidth)
                }
            }
            .padding(.horizontal, leadingPadding)
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
        .frame(height: 384)
    }
}

#Preview {
    HomeView()
}
