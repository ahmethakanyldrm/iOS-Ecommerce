//
//  NavigationBarDetailView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 7.02.2024.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        
        HStack {
            Button {
                withAnimation(.easeIn) {
                    feedBack.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
                
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
                
            }
            
        }
    }
}

#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .padding()
        .background(.gray)
}
