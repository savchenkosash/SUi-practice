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
        let sku: String
        let weight: Int
        let images: [String]
        let thumbnail: String
}
