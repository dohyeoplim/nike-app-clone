//
//  HomeIntroImage.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-12.
//

import SwiftUI

struct HomeIntroImage: View {
    var body: some View {
        Image("Landing/1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: 430)
            .frame(maxWidth: .infinity)
            .clipped()
    }
}

#Preview {
    HomeIntroImage()
}
