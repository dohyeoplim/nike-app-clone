//
//  WhatsNewHeader.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-12.
//

import SwiftUI

struct WhatsNewHeader: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("What's new")
                .font(TextStyle.text2xlMedium.font)
            Text("The latest arraivals from Nike")
                .font(TextStyle.displayXlMedium.font)
                .foregroundStyle(Color.gray600)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 24)
    }
}

#Preview {
    HomeWhatsNew()
}
