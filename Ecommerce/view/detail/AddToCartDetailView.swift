//
//  AddToCartDetailView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 8.02.2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            
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
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
}
