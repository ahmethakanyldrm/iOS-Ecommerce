//
//  RatingSizesDetailView.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 8.02.2024.
//

import SwiftUI

struct RatingSizesDetailView: View {
    // MARK: - Properties
    let sizes: [String] = ["XS","S","M","L","XL"]
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            // ratings
            VStack(alignment: .leading, spacing: 8) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)

                HStack(alignment: .center, spacing: 2) {
                    ForEach(1 ... 5, id: \.self) { _ in
                        Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundStyle(.white)
                            
                        })
                    }
                }
            }
            Spacer()

            // sizes
            VStack (alignment: .leading, spacing: 8) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack (alignment: .center, spacing:5) {
                    ForEach(sizes, id: \.self) {size in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(
                                    Color.white.cornerRadius(5)
                                )
                                .background(RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray, lineWidth: 2)
                                 )
                            
                            
                            
                        })
                    }
                }
            }
        } //: HSTack
    }
}

#Preview {
    RatingSizesDetailView()
        .padding()
}
