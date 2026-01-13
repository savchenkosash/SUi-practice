//
//  InterestPillGridView.swift
//  SUi practice
//
//  Created by alexander on 17.12.25.
//

import SwiftUI
import SwiftfulUI

struct UserInterest {
    let id = UUID().uuidString
    var iconName: String? = nil
    var emoji: String? = nil
    var text: String
}

struct InterestPillGridView: View {
    
    var interests: [UserInterest] = User.mock.interests
    
    var body: some View {
        ZStack {
            NonLazyVGrid(columns: 2, alignment: .leading, spacing: 8, items: interests) { interest in
                if let interest {
                    InterestPillView(
                        iconName: interest.iconName,
                        emoji: interest.emoji,
                        text: interest.text
                    )
                } else {
                    EmptyView()
                }
            }
            
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    VStack(spacing: 40) {
        InterestPillGridView(interests: User.mock.basics)
        InterestPillGridView(interests: User.mock.interests)
    }
}
