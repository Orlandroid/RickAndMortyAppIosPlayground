//
//  CharacterDetailView.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 16/10/26.
//

import SwiftUI

struct Property:Identifiable{
    let id = UUID()
    let key:String
    let value:String
}

struct CharacterDetailView: View {
    
    let background = Color(red: 211/255, green: 211/255, blue: 211/255)
    
    var body: some View {
        VStack{
        Image("rick_and_morty").resizable().scaledToFit().frame(maxHeight: 200)
            CardDetail(items:getPropertiesCharacter())
            CardDetail(items:getPropertiesLocation(),title:"Last seen locations")
            Spacer()
        }.navigationTitle("Rick Sanches").navigationBarTitleDisplayMode(.inline).background(background)
    }
}


struct CardDetail:View {
    let items: [Property]
    var title:String? = nil
    var body: some View {
        VStack{
            if(title != nil){
                Text(title ?? "Character").bold().padding(.bottom, 8)
            }
                ForEach(getPropertiesCharacter()){ property in
                    HStack{
                        Text(property.key).bold()
                        Text(property.value)
                    }.frame(maxWidth: .infinity)
                }
        }.frame(maxWidth: .infinity,maxHeight: 150).border(Color.red, width: 2).background(.white).padding(8)
    }
}


func getPropertiesCharacter() -> [Property] {
    return [
        Property(key: "Status", value: "Alive"),
        Property(key: "Species", value: "Human"),
        Property(key: "Gender", value: "Male"),
        Property(key: "Number of episodes", value: "15")
    ]
}


func getPropertiesLocation() -> [Property] {
    return [
        Property(key: "Name", value: "Citadel of ricks"),
        Property(key: "Type", value: "Space station"),
        Property(key: "Dimension", value: "Unknowkn"),
        Property(key: "Number of residents", value: "101")
    ]
}


#Preview {
    CharacterDetailView()
}
