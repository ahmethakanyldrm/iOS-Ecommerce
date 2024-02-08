//
//  HeaderDetailView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 7.02.2024.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        VStack (alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        }//: VStack
        .foregroundStyle(.white)
        
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
        .padding()
        .background(.gray)
}
