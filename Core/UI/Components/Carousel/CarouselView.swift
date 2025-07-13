//
//  CarouselView.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-13.
//

import SwiftUI

struct CarouselView<Content: View>: View {
    private let content: Content
    
    private let itemSpacing: CGFloat
    private let leadingPadding: CGFloat
    
    init(
        itemSpacing: CGFloat = 6,
        leadingPadding: CGFloat = 24,
        @ViewBuilder content: () -> Content
    ) {
        self.content = content()
        self.itemSpacing = itemSpacing
        self.leadingPadding = leadingPadding
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: itemSpacing) {
                content
            }
            .padding(.horizontal, leadingPadding)
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    CarouselView {
        Rectangle()
            .fill(.black)
            .frame(width: 200, height: 200)
        Rectangle()
            .fill(.black)
            .frame(width: 200, height: 200)
        Rectangle()
            .fill(.black)
            .frame(width: 200, height: 200)
        Rectangle()
            .fill(.black)
            .frame(width: 200, height: 200)
    }
}
