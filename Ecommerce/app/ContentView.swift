//
//  ContentView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 6.02.2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack (spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0,y: 5)
                
                ScrollView (.vertical, showsIndicators: false) {
                    VStack (spacing: 0){
                        FeaturedTabView()
                            .padding(.vertical)
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout,spacing: 15 ,content: {
                            
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }
                            
                        }) //: Grid
                        .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
                    } //: VStack
                } //: ScrollView
            } //: VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview

#Preview {
    ContentView()
       
}
