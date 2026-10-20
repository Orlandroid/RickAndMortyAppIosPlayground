//
//  LocationDetailView.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 20/10/26.
//

import SwiftUI

struct LocationDetailView: View {
    var body: some View {
        VStack {
            Row(title: "Location Name", subtitle: "String")
            Row(title: "Type", subtitle: "String")
            Row(title: "Dimension", subtitle: "String")
            Row(title: "Create", subtitle: "String")
            ScrollView{
                ForEach(CharactersProvider.getCharacters()) { item in
                    CharacterItem(name: item.name, status:item.status, specie: item.species,onNavigatetoCharacterDetail: {
                    })
                }
            }
        }
    }
}

struct Row: View {
    let title:String
    let subtitle:String
    var body: some View {
        HStack {
            Text(title).bold()
            Text(subtitle)
        }
    }
}

#Preview {
    LocationDetailView()
}
