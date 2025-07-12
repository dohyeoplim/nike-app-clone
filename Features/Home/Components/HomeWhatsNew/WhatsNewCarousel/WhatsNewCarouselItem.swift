//
//  WhatsNewCarouselItem.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-12.
//

import SwiftUI

struct WhatsNewCarouselItem: View {
    let productImage: String
    let productName: String
    let productPrice: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(productImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 314, height: 314)
            
            VStack(alignment: .leading, spacing: 16) {
                Text(productName)
                    .font(TextStyle.textMdMedium.font)
                    .lineLimit(1)
                
                Text(productPrice)
                    .font(TextStyle.textMdRegular.font)
                    .foregroundStyle(Color.gray600)
            }
            .frame(maxWidth: 314, alignment: .leading)
        }
    }
}

#Preview {
    WhatsNewCarouselItem(productImage: "Product/1", productName: "Air Jordan XXXVI", productPrice: "$185")
}
