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
        CardWithImageAndTextsView(imageName: productImage, title: productName, subtitle: productPrice, size: .large)
    }
}

#Preview {
    WhatsNewCarouselItem(productImage: "Product/1", productName: "Air Jordan XXXVI", productPrice: "$185")
}
