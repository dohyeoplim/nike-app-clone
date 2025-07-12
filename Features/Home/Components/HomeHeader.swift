//
//  HomeHeader.swift
//  Nike
//
//  Created by 임도협 on 2025-07-12.
//

import SwiftUI

struct HomeHeader: View {
    let title: String
    let date: String
    
    init(title: String) {
        self.title = title
        self.date = HomeHeader.formattedDate()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(TextStyle.displayXlMedium.font)
            Text(date)
                .font(TextStyle.text2xlRegular.font)
                .foregroundStyle(Color.gray600)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 24)
        .padding(.vertical, 50)
    }
    
    private static func formattedDate() -> String {
         let formatter = DateFormatter()
         formatter.dateFormat = "EEEE, dd MMMM"
         return formatter.string(from: Date())
     }
}

#Preview {
    HomeHeader(title: "Discover")
}
