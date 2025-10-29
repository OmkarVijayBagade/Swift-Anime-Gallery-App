//
//  AnimeModel.swift
//  AnimeGallery
//
//  Created by Omkar Vijay Bagade on 28/10/25.
//

import Foundation

struct AnimeCategoryData: Codable {
    let anime: [Anime]
    let manga: [Anime]
}

struct Anime: Identifiable, Codable {
    let id: Int
    let title: String
    let imageUrl: String
    let description: String
}


