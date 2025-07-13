//
//  CardWithImageAndTextsView.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-13.
//

import SwiftUI

struct CardWithImageAndTextsView: View {
    let imageName: String
    let title: String?
    let subtitle: String?
    
    private let layout: CardLayout
    private let size: CardSize
    
    init(
        imageName: String,
        title: String? = nil,
        subtitle: String? = nil,
        layout: CardLayout = .vertical,
        size: CardSize = .medium
    ) {
        self.imageName = imageName
        self.title = title
        self.subtitle = subtitle
        self.layout = layout
        self.size = size
    }
    
    var body: some View {
        Group {
            switch layout {
            case .vertical:
                VStack(alignment: .leading, spacing: 12) {
                    imageView
                    textView
                }
            case .horizontal:
                HStack(spacing: 16) {
                    imageView
                    textView
                }
            }
        }
    }
    
    
    private var imageView: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size.imageSize.width, height: size.imageSize.height)
            .background(Color.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
    
    @ViewBuilder
    private var textView: some View {
        if title != nil || subtitle != nil {
            VStack(alignment: .leading, spacing: 8) {
                if let title = title {
                    Text(title)
                        .font(size.titleFont)
                        .lineLimit(1)
                }
                if let subtitle = subtitle {
                    Text(subtitle)
                        .font(size.subtitleFont)
                        .foregroundStyle(Color.gray600)
                        .lineLimit(1)
                }
            }
        }
    }
}

#Preview {
    let testCustomSize = CardSize(
        imageSize: CGSize(width: 246, height: 292), titleFont: TextStyle.textMdBold.font, subtitleFont: TextStyle.textMdRegular.font
    )
    
    ScrollView {
        VStack {
            CardWithImageAndTextsView(imageName: "Product/1", title: "Air Jordan 1", subtitle: "Retro High", size: .large)
            CardWithImageAndTextsView(imageName: "Product/1", title: "Air Jordan 1", subtitle: "Retro High", size: .medium)
            CardWithImageAndTextsView(imageName: "Product/1", title: "Air Jordan 1", subtitle: "Retro High", size: .small)
            CardWithImageAndTextsView(imageName: "Product/1", title: "Air Jordan 1", subtitle: "Retro High", size: testCustomSize)
        }
    }
}
