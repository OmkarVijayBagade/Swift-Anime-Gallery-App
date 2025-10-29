//
//  FavouriteView.swift
//  AnimeGallery
//
//  Created by Omkar Vijay Bagade on 29/10/25.
//

import SwiftUI

struct FavouriteView: View {
    var body: some View {
        
        VStack{
            Text(Constants.favouriteString)
                .font(.largeTitle)
                .padding()
            
            Spacer()
            
            Text(Constants.favouriteAnime)
                .font(.title2)
                .padding()
            
            AsyncImage(url: URL(string: Constants.favouriteAnimeURL)){image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 500)
                    .shadow(radius: 10)
                    .clipped()
                    .cornerRadius(10)
                
            }placeholder: {
                ProgressView()
            }
            Spacer()
        }
    }
}

#Preview {
    FavouriteView()
}
