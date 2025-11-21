//
//  SpotifyNewReleaseCell.swift
//  SUi practice
//
//  Created by alexander on 27.11.25.
//

import SwiftUI

struct SpotifyNewReleaseCell: View {
    
    var imageName: String = Constants.randomImage
    var headline: String? = "New release from"
    var subheadline: String? = "Some artist"
    var title: String? = "Some Playlist"
    var subtitle: String? = "Single - title"
    var addToPlaylistPressed: (() -> Void)? = nil
    var onPlayPressed: (() -> Void)? = nil
    
    var body: some View {
        
        
        VStack (spacing: 16) {
            HStack(spacing: 8) {
                ImageLoaderView(urlString: imageName)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 2) {
                    if let headline {
                        Text(headline)
                            .foregroundStyle(.spotifyLightGray)
                            .font(.callout)
                    }
                    
                    if let subheadline {
                        Text(subheadline)
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundStyle(.spotifyWhite)
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                ImageLoaderView(urlString: imageName)
                    .frame(width: 140, height: 140)
                
                VStack (alignment: .leading, spacing: 32) {
                    VStack (alignment: .leading, spacing: 2) {
                        if let title {
                            Text(title)
                                .fontWeight(.semibold)
                                .foregroundStyle(.spotifyWhite)
                                .lineLimit(1)
                        }
                        if let subtitle {
                            Text(subtitle)
                                .foregroundStyle(.spotifyLightGray)
                                .lineLimit(2)
                        }
                    }
                    .font(.callout)
                    
                    HStack {
                        Image(systemName: "plus.circle")
                            .foregroundStyle(.spotifyLightGray)
                            .font(.title3)
                            .padding(6)
                            .background(Color.black.opacity(0.001))
                            .onTapGesture {
                                addToPlaylistPressed?()
                            }
                            .offset(x: -4)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Image(systemName: "play.circle.fill")
                            .foregroundStyle(.spotifyWhite)
                            .font(.title)
                    }
                }
                .padding(.trailing, 16)
            }
            .themeColors(isSelected: false)
            .cornerRadius(8)
            .onTapGesture {
                onPlayPressed?()
            }
        }
    }
}

#Preview {
    ZStack {
        Color.spotifyBlack.ignoresSafeArea()
        SpotifyNewReleaseCell()
            .padding()
    }
    
}
