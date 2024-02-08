//
//  NavigationBarView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 6.02.2024.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - Properties
    
    @State private var isAnimated: Bool = false
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button {
                
            }label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundStyle(.black)
                
            } //: Button
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.black)
                
                Circle()
                    .fill(.red)
                    .frame(width: 14, height: 14, alignment: .center)
                    .offset(x: -18, y: -10)
            }
        }//: HStack
        
    }
}

// MARK: - Preview
#Preview {
    NavigationBarView()
        .previewLayout(.sizeThatFits)
}
