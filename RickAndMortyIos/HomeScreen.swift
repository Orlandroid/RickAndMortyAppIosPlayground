//
//  ContentView.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 06/10/26.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        VStack {
            CardImage(imageResource: "rick_and_morty", title: "CHARACTERS", action: {})
            CardImage(imageResource: "img_episode", title: "LOCATIONS", action: {})
            CardImage(imageResource: "img_location", title: "EPISODES", action: {})
        }.navigationTitle("Home")
    }
}

struct CardImage: View {
    let imageResource:String
    let title: String
    let action: () -> Void
    var body: some View {
        VStack(spacing: 0){
            Image(imageResource).resizable().frame(maxWidth: .infinity, maxHeight:.infinity)
            Text(title)
        }.background(Color.gray).border(Color.black, width: 1).padding()
    }
}

#Preview {
    HomeScreen()
}
