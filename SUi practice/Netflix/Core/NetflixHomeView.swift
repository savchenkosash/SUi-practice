//
//  NetflixHomeView.swift
//  SUi practice
//
//  Created by alexander on 16.01.26.
//

import SwiftUI

struct NetflixHomeView: View {
    
    @State private var filters: [FilterModel] = FilterModel.mockArray
    @State private var selectedFilter: FilterModel? = nil
    
    var body: some View {
        
        ZStack {
            Color.netflixBlack.ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                header
                    .padding(.horizontal, 16)
                
                NetflixFilterBarView(
                    filters: filters,
                    selectedFilter: selectedFilter,
                    onFilterPressed: { newFilter in
                        selectedFilter = newFilter
                    },
                    onXMarkPressed: {
                        selectedFilter = nil
                    }
                )
                .padding(.top, 16)
                
                Spacer()
            }
            .foregroundStyle(.netflixWhite)
        }
    }
    
    private var header: some View {
        HStack(spacing: 0) {
            Text("For you")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title)
                
            HStack(spacing: 16) {
                Image(systemName: "tv.badge.wifi")
                    .onTapGesture {
                        
                    }
                
                Image(systemName: "tv.badge.wifi")
                    .onTapGesture {
                        
                    }
            }
            .font(.title2)
        }
    }
    
}

#Preview {
    NetflixHomeView()
}
