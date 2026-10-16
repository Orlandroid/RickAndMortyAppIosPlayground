//
//  EpisodesView.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 06/10/26.
//

import SwiftUI

struct EpisodesView: View {
    var body: some View {
        VStack{
            ForEach(0 ..< 10) { number in
                EpisodeItem()
            }
        }
    }
}

struct EpisodeItem: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("S01E01").bold()
            HStack{
                Text("Pilot")
                Spacer()
                Image(systemName: "arrow.right.circle.fill")
            }
            Text("December 2, 2013")
        }.padding(.horizontal,32).frame(maxWidth:.infinity, alignment: .leading).border(.black).navigationTitle("Episodes").navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    EpisodesView()
}
