//
//  ProductItemView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 7.02.2024.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - Properties
    let product: Product
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            // name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }//: VStack
    }
}

#Preview {
    ProductItemView(product: products[0])
        .padding()
        .background(colorBackground)
}
