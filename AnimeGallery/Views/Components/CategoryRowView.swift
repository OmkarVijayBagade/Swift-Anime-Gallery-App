//
//  CategoryRowView.swift
//  AnimeGallery
//
//  Created by Omkar Vijay Bagade on 29/10/25.
//

import SwiftUI

struct CategoryRowView: View {
    let title: String
    let items: [Anime]

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .bold()
                .padding(.horizontal, 6)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 15) {
                    ForEach(items) { item in
                        NavigationLink(destination: AnimeDetailView(anime: item)) {
                            VStack(alignment: .leading) {
                                AsyncImage(url: URL(string: item.imageUrl)) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 140, height: 200)
                                        .clipped()
                                        .cornerRadius(10)
                                } placeholder: {
                                    ProgressView()
                                        .frame(width: 140, height: 200)
                                }
                                
                                Text(item.title)
                                    .font(.caption)
                                    .bold()
                                    .lineLimit(2)
                                    .frame(width: 140, alignment: .leading)
                            }
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 6)
            }
        }
    }
}
#Preview {
    CategoryRowView(
        title: "Anime",
        items: [
            Anime(id: 1, title: "One Piece", imageUrl: "https://cdn.myanimelist.net/images/anime/6/73245.jpg",
                 description: "Luffy and his crew sail in search of the legendary treasure, the One Piece."),
            Anime(id: 2, title: "Demon Slayer", imageUrl: "https://cdn.myanimelist.net/images/anime/1286/99889.jpg",
                 description: "Tanjiro becomes a demon slayer to save his sister and avenge his family.")
        ]
    )
}
