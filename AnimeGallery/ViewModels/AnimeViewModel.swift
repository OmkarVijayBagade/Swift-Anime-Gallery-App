//
//  AnimeViewModel.swift
//  AnimeGallery
//
//  Created by Omkar Vijay Bagade on 29/10/25.
//

import Foundation
import Combine

class AnimeViewModel: ObservableObject {
    @Published var animeList: [Anime] = []
    @Published var mangaList: [Anime] = []

    init() {
        loadData()
    }

    func loadData() {
        if let url = Bundle.main.url(forResource: "animeData", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decodedData = try JSONDecoder().decode(AnimeCategoryData.self, from: data)
                self.animeList = decodedData.anime
                self.mangaList = decodedData.manga
            } catch {
                print("❌ Error loading data: \(error)")
            }
        } else {
            print("❌ JSON file not found.")
        }
    }
}

