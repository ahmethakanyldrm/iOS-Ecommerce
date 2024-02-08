//
//  AddToCartDetailView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 8.02.2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            feedBack.impactOccurred()
        }, label: {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
            Spacer()
        }) //: Button
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
}
