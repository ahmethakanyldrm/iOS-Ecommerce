//
//  Product.swift
//  Ecommerce
//
//  Created by AHMET HAKAN YILDIRIM on 7.02.2024.
//

import Foundation

struct Product : Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
    let price: Int
    let color: [Double]
    let description: String
    
    var red: Double {
        return color[0]
    }
    
    var green: Double {
        return color[1]
    }
    
    var blue: Double {
        return color[2]
    }
    
    var formattedPrice: String {
        return "\(price) ₺"
    }
}
