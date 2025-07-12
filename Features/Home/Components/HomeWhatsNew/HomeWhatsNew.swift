//
//  HomeWhatsNew.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-12.
//

import SwiftUI

struct HomeWhatsNew: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 22) {
            WhatsNewHeader()
            
            WhatsNewCarousel()
        }
        .padding(.vertical, 40)
    }
}

#Preview {
    HomeWhatsNew()
}
