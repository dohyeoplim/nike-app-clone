//
//  TabBarView.swift
//  Nike
//
//  Created by 임도협 on 2025-07-12.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selected: TabBarItem
        let items: [TabBarItem]
    
    var body: some View {
        HStack {
            ForEach(items, id: \.self) { item in
                tabButton(for: item)
            }
        }
    }
    
    @ViewBuilder
    private func tabButton(for item: TabBarItem) -> some View {
        Button(action: {
            withAnimation(.linear(duration: 0.2)) {
                selected = item
            }
        }) {
            VStack(spacing: 3) {
                Image(systemName: item.icon)
                    .frame(width: 24, height: 24)
                    .foregroundColor(selected == item ? .black : .gray600)
                
                Text(item.title)
                    .font(TextStyle.textXsRegular.font)
                    .foregroundStyle(selected == item ? .black : .gray600)
                
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 8)
        }
    }
}

#Preview {
    @Previewable @State var selected: TabBarItem = .home
    TabBarView(selected: $selected, items: TabBarItem.all)
}
