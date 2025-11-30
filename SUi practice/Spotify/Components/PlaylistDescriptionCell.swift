//
//  PlaylistDescriptionCell.swift
//  SUi practice
//
//  Created by alexander on 30.11.25.
//

import SwiftUI

struct PlaylistDescriptionCell: View {
    
    var descriptionText: String = Product.mock.description
    var userName: String = "Tej"
    var subheadline: String = "Some headline goes here"
    var onAddToPlaylistPressed: (() -> Void)? = nil
    var onDownloadPressed: (() -> Void)? = nil
    var onSharePressed: (() -> Void)? = nil
    var onEllipsisPressed: (() -> Void)? = nil
    var onShufflePressed: (() -> Void)? = nil
    var onPlayPressed: (() -> Void)? = nil
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(descriptionText)
                .foregroundStyle(.spotifyLightGray)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            madeForYouSection
            
            Text(subheadline)
            
            buttonsRow
            
        }
        .font(.callout)
        .fontWeight(.medium)
        .foregroundStyle(.spotifyLightGray)
        
        

        
    }
    
    private var madeForYouSection: some View {
        HStack(spacing: 8) {
            Image(systemName: "applelogo")
                .font(.title3)
                .foregroundStyle(.spotifyGreen)
            
            Text("Made for ")
            +
            Text(userName)
                .bold()
                .foregroundStyle(.spotifyWhite)
        }
    }
    
    private var buttonsRow: some View {
        HStack(spacing: 0) {
            HStack(spacing: 0) {
                Image(systemName: "plus.circle")
                    .background(Color.black.opacity(0.001))
                    .padding(8)
                    .onTapGesture {
                        
                    }
                
                Image(systemName: "arrow.down.circle")
                    .background(Color.black.opacity(0.001))
                    .padding(8)
                    .onTapGesture {
                        
                    }
                
                Image(systemName: "square.and.arrow.up")
                    .background(Color.black.opacity(0.001))
                    .padding(8)
                    .onTapGesture {
                        
                    }
                
                Image(systemName: "ellipsis")
                    .background(Color.black.opacity(0.001))
                    .padding(8)
                    .onTapGesture {
                        
                    }
            }
            .offset(x: -8)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 8) {
                Image(systemName: "shuffle")
                    .font(.system(size: 24))
                    .background(Color.black.opacity(0.001))
                    .padding(8)
                    .onTapGesture {
                        
                    }
                
                Image(systemName: "play.circle.fill")
                    .font(.system(size: 46))
                    .background(Color.black.opacity(0.001))
                    .padding(8)
                    .onTapGesture {
                        
                    }
            }
            .foregroundStyle(.spotifyGreen)
            
        }
        .font(.title2)
    }
    
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        PlaylistDescriptionCell()
            .padding()
    }
    
}
