//
//  Characters.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 06/10/26.
//

import SwiftUI

struct CharactersView: View {
    
    
    @State var navigationManager = NavigationManager.shared
    
    
    
    let characters = [
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human")]
    
    var body: some View {
        VStack{
            ForEach(characters) { item in
                CharacterItem(name: item.name, status:item.status, specie: item.species,onNavigatetoCharacterDetail: {
                    navigationManager.path.append(RickAndMotyNavigationType.characterDetail)
                })
            }
        }.navigationTitle("Characters").navigationBarTitleDisplayMode(.inline)
    }    
    
}



#Preview {
    CharactersView()
}
