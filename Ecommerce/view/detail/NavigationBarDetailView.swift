//
//  NavigationBarDetailView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 7.02.2024.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        
        HStack {
            Button {
                
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
        .padding()
        .background(.gray)
}
