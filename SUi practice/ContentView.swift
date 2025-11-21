//
//  ContentView.swift
//  SUi practice
//
//  Created by alexander on 21.11.25.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting
import SDWebImageSwiftUI

struct ContentView: View {
    
    @State private var users: [User] = []
    @State private var products: [Product] = []
    
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(users) { user in
                    HStack {
                        WebImage(url: URL(string: user.image))
                            .resizable()
                            .indicator(.activity)
                            .frame(width: 50, height: 50)
                        Text(user.firstName)
                    }
                    
                        
                }
//                ForEach(products) { product in
//                    Text(product.title)
//                }
            }
            .padding()
            .task {
                await getData()
            }
        }
    }
    
    private func getData() async {
        do {
            users = try await DatabaseHelper().getUsers()
            products = try await DatabaseHelper().getProducts()
        } catch {
            
        }
    }
    
}

#Preview {
    ContentView()
}
