//
//  InfoView.swift
//  AnimeGallery
//
//  Created by Omkar Vijay Bagade on 29/10/25.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ZStack {
            Image("infoPic")
                .resizable()
                .ignoresSafeArea()
                
            VStack {
                Text("AnimeGallery")
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                Text(Constants.infoContent)
                    .font(.title.italic())
                    .padding(30)
                
                Spacer()
                Text("Developed by Omkar ❤️")
                    .font(.subheadline)
            }
            .padding()
        }
    }
}

#Preview {
    InfoView()
}
