//
//  SectionView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 6.02.2024.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Properties
    @State var rotateClockwise: Bool
    
    // MARK: - Body
    var body: some View {
        VStack (spacing: 0) {
            Spacer()
            
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
            
            
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: true)
        .padding()
        .background(colorBackground)
}
