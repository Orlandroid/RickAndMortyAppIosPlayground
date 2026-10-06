//
//  ContentView.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 06/10/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            CardImage(imageResource: "rick_and_morty", title: "Characters", action: {})
            CardImage(imageResource: "img_episode", title: "Locations", action: {})
            CardImage(imageResource: "img_location", title: "Episodes", action: {})
        }.navigationTitle("Home")
    }
}

struct CardImage: View {
    let imageResource:String
    let title: String
    let action: () -> Void
    var body: some View {
        VStack{
            Image(imageResource).resizable().frame(
                width: .infinity,
                height: 200
            )
            Text(title)
        }.background(Color.gray).padding()
    }
}

#Preview {
    ContentView()
}
