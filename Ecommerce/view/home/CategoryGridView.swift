//
//  CategoryGridView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 6.02.2024.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section (
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            } //: Grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } //: Scroll
    }
}

#Preview {
    CategoryGridView()
        .padding()
        .background(colorBackground)
}
