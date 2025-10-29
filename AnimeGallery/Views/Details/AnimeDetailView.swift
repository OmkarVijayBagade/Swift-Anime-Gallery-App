//
//  AnimeDetailView.swift
//  AnimeGallery
//
//  Created by Omkar Vijay Bagade on 29/10/25.
//

import SwiftUI

struct AnimeDetailView: View {
    let anime: Anime

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                // Anime Image
                AsyncImage(url: URL(string: anime.imageUrl)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .clipped()
                } placeholder: {
                    ProgressView()
                        .frame(height: 300)
                }

                // Title
                Text(anime.title)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)

                // Description
                Text(anime.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)

                Spacer()
            }
        }
        .navigationTitle(anime.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AnimeDetailView(anime: Anime(id: 1, title: "One Piece", imageUrl: "https://cdn.myanimelist.net/images/anime/6/73245.jpg", description: "Luffy and his crew sail in search of the legendary treasure, the One Piece.")
    )
}
