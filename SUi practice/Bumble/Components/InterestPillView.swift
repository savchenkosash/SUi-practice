//
//  InterestPillView.swift
//  SUi practice
//
//  Created by alexander on 17.12.25.
//

import SwiftUI

struct InterestPillView: View {
    
    var iconName: String? = "heart.fill"
    var emoji: String? = "🤙"
    var text: String = "Grauate Degree"
    
    var body: some View {
        HStack(spacing: 4) {
            if let iconName = iconName {
                Image(systemName: iconName)
            } else if let emoji = emoji {
                Text(emoji)
            }
            
            Text(text)
        }
        .font(.callout)
        .fontWeight(.medium)
        .padding(.vertical, 6)
        .padding(.horizontal, 12)
        .foregroundStyle(.bumbleBlack)
        .background(.bumbleLightYellow)
        .cornerRadius(32)
    }
    
}

#Preview {
    VStack {
        InterestPillView(iconName: nil)
        InterestPillView()
    }
}
