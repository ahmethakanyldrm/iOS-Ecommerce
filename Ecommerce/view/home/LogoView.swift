//
//  LogoView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 6.02.2024.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack (spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
        }//: HStack
    }
}

#Preview {
    LogoView()
        .previewLayout(.sizeThatFits)
        .padding()
}
