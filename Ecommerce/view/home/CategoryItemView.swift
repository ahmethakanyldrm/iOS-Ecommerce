//
//  CategoryItemView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 6.02.2024.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    var body: some View {
        Button(action: {
        }, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(.gray)

                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)

                Spacer()
            } //: HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1))

        })
    }
}

#Preview {
    CategoryItemView(category: categories[0])
        .padding()
    // .background(colorBackground)
}
