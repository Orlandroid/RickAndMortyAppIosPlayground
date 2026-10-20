//
//  CharacterItem.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 20/10/26.
//

import SwiftUI

struct CharacterItem: View {
    let name:String
    let status: Status
    let specie: String
    let onNavigatetoCharacterDetail: () -> Void
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
        }.frame(maxWidth: .infinity, maxHeight:100).border(.black,width: 2).padding(8).onTapGesture {
            onNavigatetoCharacterDetail()
        }
    }
}

