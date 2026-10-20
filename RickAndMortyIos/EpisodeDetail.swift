//
//  EpisodeDetail.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 20/10/26.
//

import SwiftUI

struct EpisodeDetail: View {
    var body: some View {
        VStack {
                Image("rick_and_morty").resizable().scaledToFit().padding(.top,8)
                VStack(alignment: .leading, spacing: 16){
                    HStack {
                        Text("Episode name:").bold()
                        Text("Close Rick-counter of the Rick kind")
                    }
                    HStack {
                        Text("Episode Number:").bold()
                        Text("S01E01")
                    }
                    HStack {
                        Text("Episode date:").bold()
                        Text("April 7 2014")
                    }
                }.padding(.horizontal,6)
                Text("Characters").bold().font(.largeTitle).padding(.top,8)
                ScrollView{
                    ForEach(CharactersProvider.getCharacters()) { item in
                        CharacterItem(name: item.name, status:item.status, specie: item.species,onNavigatetoCharacterDetail: {
                        })
                    }
                }
                Spacer()
            
        }
    }
}

#Preview {
    EpisodeDetail()
}
