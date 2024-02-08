//
//  BrandGridView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 7.02.2024.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            })//: Grid
            .frame(height: 200)
            .padding(15)
        }
    }
}

#Preview {
    BrandGridView()
        .background(colorBackground)
}
