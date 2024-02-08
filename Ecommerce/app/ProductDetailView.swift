//
//  ProductDetailView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 7.02.2024.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            // header
            HeaderDetailView()
                .padding(.horizontal)

            // detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)

            // detail bottom part
            VStack(alignment: .center, spacing: 0) {
                // ratings + sizes
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                } //: scroll
                // quantity + favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                // add to cart
                AddToCartDetailView()
                
                    .padding(.bottom,20)
                Spacer()
            }//: VSTack
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        } //: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
