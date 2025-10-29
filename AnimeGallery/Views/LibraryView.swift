//
//  LibraryView.swift
//  AnimeGallery
//
//  Created by Omkar Vijay Bagade on 29/10/25.
//

import SwiftUI

struct LibraryView: View {
    @StateObject private var viewModel = AnimeViewModel()

    var body: some View {
        
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    CategoryRowView(title: "Anime", items: viewModel.animeList)
                    CategoryRowView(title: "Manga / Manhwa", items: viewModel.mangaList)
                    
                }
                .padding()
            }
            .navigationTitle("Library")
            .navigationBarTitleDisplayMode(.large)
        }
    }


#Preview {
    LibraryView()
}
