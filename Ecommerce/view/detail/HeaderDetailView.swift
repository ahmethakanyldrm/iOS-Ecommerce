//
//  HeaderDetailView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 7.02.2024.
//

import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        }//: VStack
        .foregroundStyle(.white)
        
    }
}

#Preview {
    HeaderDetailView()
        .padding()
        .background(.gray)
}
