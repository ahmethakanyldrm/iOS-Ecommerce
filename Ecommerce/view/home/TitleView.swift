//
//  TitleView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 7.02.2024.
//

import SwiftUI

struct TitleView: View {
    var title: String 
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
            
            
        } //: HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "Helmet")
        .background(colorBackground)
}
