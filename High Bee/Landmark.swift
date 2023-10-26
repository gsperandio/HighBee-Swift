//
//  Landmark.swift
//  High Bee
//
//  Created by Dev Mac on 26/10/23.
//

import Foundation

struct Products {
    let id: Int
    let name: String
    let description: String
    let ImageProduct: String
    let price: String
}



extension Products{

    static func allProducts() -> [Products]{
        return [
            Products(id: 1, name: "Colombia Gold", description: "Desc de um produto",ImageProduct: "img1", price: "75.99"),
            Products(id: 2, name: "AK-47", description: "Desc de um produto",ImageProduct: "img2", price: "42.50"),
            Products(id: 3, name: "Orange Kush", description: "Desc de um produto",ImageProduct: "img3", price: "99.90"),
            Products(id: 4, name: "Purple Haze", description: "Desc de um produto",ImageProduct: "img4", price: "54.75"),
            Products(id: 5, name: "Blue Dream", description: "Desc de um produto",ImageProduct: "img5", price: "31.25"),
            Products(id: 6, name: "Sour Diesel", description: "Desc de um produto",ImageProduct: "img6", price: "68.00"),
            Products(id: 7, name: "OG Kush", description: "Desc de um produto",ImageProduct: "img7", price: "89.99"),
            Products(id: 8, name: "White Widow", description: "Desc de um produto",ImageProduct: "img8", price: "45.60"),
            Products(id: 9, name: "Girl Scout Cookies", description: "Desc de um produto",ImageProduct: "img9", price: "79.50"),
            Products(id: 10, name: "Pineapple Express", description: "Desc de um produto",ImageProduct: "img10", price: "22.75"),
            Products(id: 11, name: "Northern Lights", description: "Desc de um produto",ImageProduct: "img11", price: "59.99"),
            Products(id: 12, name: "Green Crack", description: "Desc de um produto",ImageProduct: "img12", price:  "38.25")
        ]
    }
    
    static func productWithID(_ id: Int) -> Products? {
            // Recupere todos os produtos
            let allProducts = self.allProducts()

            // Encontre o produto com o ID correspondente
            if let product = allProducts.first(where: { $0.id == id }) {
                return product
            }

            // Caso nenhum produto corresponda ao ID, retorne nil
            return nil
        }
}

