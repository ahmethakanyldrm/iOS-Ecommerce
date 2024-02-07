//
//  BrandItemView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 7.02.2024.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - Properties
    
    let brand: Brand
    
    // MARK: - Body
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1))
    }
}

#Preview {
    BrandItemView(brand: brands[0])
        .padding()
        .background(colorBackground)
}
