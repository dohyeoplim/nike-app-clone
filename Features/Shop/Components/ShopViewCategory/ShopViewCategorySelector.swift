//
//  ShopViewCategorySelector.swift
//  Nike
//
//  Created by Dohyeop Lim on 2025-07-13.
//

import SwiftUI

struct ShopViewCategorySelector: View {
    @Namespace private var underlineNamespace
    @Binding var selectedCategory: ShopViewCategory?
    
    private let underlineHeight: CGFloat = 2
    private let spacing: CGFloat = 12
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .fill(Color.gray300)
                .frame(height: 1)

            HStack(spacing: 32) {
                ForEach(ShopViewCategory.allCases) { category in
                    Button {
                        withAnimation(.spring(response: 0.35, dampingFraction: 0.75)) {
                            selectedCategory = category
                        }
                    } label: {
                        Text(category.rawValue)
                            .font(TextStyle.text2xlMedium.font)
                            .foregroundStyle(selectedCategory == category ? .black : .gray600)
                            .padding(.bottom, spacing + underlineHeight)
                            .background(alignment: .bottom) {
                                if selectedCategory == category {
                                    Rectangle()
                                        .fill(Color.black)
                                        .frame(height: underlineHeight)
                                        .matchedGeometryEffect(id: "underline", in: underlineNamespace)
                                }
                            }
                    }
                    .buttonStyle(.plain)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 24)
        }
    }
}

#Preview {
    @Previewable @State var selectedCategory: ShopViewCategory? = .men
    ShopViewCategorySelector(selectedCategory: $selectedCategory)
}
