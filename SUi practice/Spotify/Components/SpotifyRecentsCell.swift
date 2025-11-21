//
//  SpotifyRecentsCell.swift
//  SUi practice
//
//  Created by alexander on 27.11.25.
//

import SwiftUI

struct SpotifyRecentsCell: View {
    
    var imageName: String = Constants.randomImage
    var title: String = "Some a random title"
    
    var body: some View {
        HStack(spacing: 16) {
            ImageLoaderView(urlString: imageName)
                .frame(width: 55, height: 55)
            
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .lineLimit(2)
        }
            .padding(.trailing, 8)
            .frame(maxWidth: .infinity, alignment: .leading)
            .themeColors(isSelected: false)
            .background(Color.blue)
            .cornerRadius(6)
    }
}

#Preview {
    ZStack {
        Color.spotifyBlack.ignoresSafeArea()
        
        VStack {
            HStack {
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
            HStack {
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
        }
    }
}
