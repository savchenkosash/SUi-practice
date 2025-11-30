//
//  Product.swift
//  SUi practice
//
//  Created by alexander on 21.11.25.
//

import Foundation

struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Codable, Identifiable {
        let id: Int
        let title, description: String
        let price: Double
        let stock: Int
        let brand: String?
        let category: String
        let sku: String
        let weight: Int
        let images: [String]
        let thumbnail: String
    
        var firstImage: String {
            images.first ?? Constants.randomImage
        }
    
    static var mock: Product {
        Product(
            id: 123,
            title: "Example product title",
            description: "This is some mock product description",
            price: 999,
            stock: 50,
            brand: "Apple",
            category: "Electronic deices",
            sku: "sku sample",
            weight: 100,
            images: [Constants.randomImage, Constants.randomImage, Constants.randomImage],
            thumbnail: Constants.randomImage
        )
    }
        
}

struct ProductRow: Identifiable {
    let id = UUID().uuidString
    let title: String
    let products: [Product]
}
