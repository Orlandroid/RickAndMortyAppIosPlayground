//
//  CharactersProvider.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 20/10/26.
//


class CharactersProvider{
    
    static let characters = [
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human")]
    
    
    static func getCharacters() -> [Character] {
        return characters
    }
    
    
}

