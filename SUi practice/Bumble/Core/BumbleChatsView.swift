//
//  BumbleChatsView.swift
//  SUi practice
//
//  Created by alexander on 15.01.26.
//

import SwiftUI

struct BumbleChatsView: View {
    
    @State private var allUsers: [User] = []
    
    var body: some View {
        ZStack {
            Color.bumbleWhite.ignoresSafeArea()
            
            VStack(spacing: 0) {
                header
                    .padding(16)
                
                VStack(alignment: .leading, spacing: 0) {
                    Group {
                        Text("Match Queue")
                        +
                        Text(" (\(allUsers.count))")
                            .foregroundStyle(.bumbleGray)
                    }
                    .padding(.horizontal, 16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 16) {
                            ForEach(allUsers) { user in
                                BumbleProfileImageCell(
                                    imageName: user.image,
                                    percentageRemaining: Double.random(in: 0...1),
                                    hasNewMessage: Bool.random()
                                )
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                    .scrollIndicators(.hidden)
                    .frame(height: 100)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                Spacer()
            }
            
           
            
        }
        
        
        
        
        .task {
            await getData()
        }
        .toolbar(.hidden, for: .navigationBar)
    }
    
    private func getData() async {
        guard allUsers.isEmpty else { return }
        do {
            allUsers = try await DatabaseHelper().getUsers()
        } catch {
            
        }
    }
    
    private var header: some View {
        HStack(spacing: 0) {
            Image(systemName: "line.horizontal.3")
            Spacer()
            Image(systemName: "magnifyingglass")
        }
        .font(.title)
        .fontWeight(.medium)
    }
    
    
}




#Preview {
    BumbleChatsView()
}
