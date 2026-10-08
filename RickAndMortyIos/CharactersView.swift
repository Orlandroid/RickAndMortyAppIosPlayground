//
//  Characters.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 06/10/26.
//

import SwiftUI

struct CharactersView: View {
    
    
    enum Status:String{
        case Alive = "Alive"
        case   Dead = "Dead"
        case Unknown = "Unknown"
    }
    
    
    struct Character:Identifiable{
        let id = UUID()
        let name:String
        let status:Status
        let species:String
    }
    
    
    let characters = [
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human"),
        Character(name: "Rick Sanchez", status: Status.Alive, species: "human")]
    
    var body: some View {
        List(characters){item in
            CharacterItem(name: item.name, status:item.status, specie: item.species)
        }
    }
    
    
    struct CharacterItem: View {
        let name:String
        let status: Status
        let specie: String
        var body: some View {
            HStack{
                Image("rick_and_morty").resizable().frame(maxWidth: .infinity, maxHeight:.infinity)
                VStack(
                    alignment: HorizontalAlignment.center
                ){
                    Text(name).fontWeight(.bold).padding(.top,8)
                    Spacer()
                    HStack{
                        Circle()
                            .fill(Color.green)
                            .frame(width: 10, height: 10)
                        Text(status.rawValue).frame(maxWidth: .infinity)
                        Text("-")
                        Text(specie).frame(maxWidth: .infinity)
                    }.padding(.bottom,8)
                }
            }.border(Color.black, width: 1).frame(maxWidth: .infinity, maxHeight:100)
        }
    }

    
    
}



#Preview {
    CharactersView()
}
