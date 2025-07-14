//
//  ShopBannerView.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-14.
//

import SwiftUI

struct ShopBannerView: View {
    let backgroundImage: String
    let title: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(backgroundImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
            
            Text(title)
                .font(TextStyle.displaySmMedium.font)
                .foregroundStyle(.white)
                .padding(.leading, 24)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ShopBannerView(backgroundImage: "Shop/Banner/1", title: "New & Featured")
}
