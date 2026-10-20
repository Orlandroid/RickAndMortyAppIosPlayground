//
//  Character.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 20/10/26.
//

import Foundation

struct Character:Identifiable{
    let id = UUID()
    let name:String
    let status:Status
    let species:String
}
