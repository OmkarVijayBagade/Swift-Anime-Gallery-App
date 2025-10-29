//
//  ContentView.swift
//  AnimeGallery
//
//  Created by Omkar Vijay Bagade on 29/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {
                FavouriteView()
                    .tabItem {
                        Label(Constants.favouriteString, systemImage: Constants.favouriteIconString)
                    }
                
                NavigationView {
                    LibraryView()
                }
                .tabItem {
                    Label(Constants.libraryString, systemImage: Constants.libraryIconString)
                }
                
                InfoView()
                    .tabItem {
                        Label(Constants.infoString, systemImage: Constants.infoIconString)
                    }
            }
            .tint(.red)
        }
    }
}

#Preview {
    ContentView()
}

