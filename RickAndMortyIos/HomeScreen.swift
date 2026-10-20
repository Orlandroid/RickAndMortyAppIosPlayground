//
//  ContentView.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 06/10/26.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var navigationManager = NavigationManager.shared
    
    
    var body: some View {
        NavigationStack(path: $navigationManager.path){
            VStack {
                CardImage(imageResource: "rick_and_morty", title: "CHARACTERS", action: {
                    navigationManager.path.append(RickAndMotyNavigationType.characters)
                })
                CardImage(imageResource: "img_location", title: "EPISODES", action: {
                    navigationManager.path.append(RickAndMotyNavigationType.episodes)
                })
                CardImage(imageResource: "img_episode", title: "LOCATIONS", action: {
                    navigationManager.path.append(RickAndMotyNavigationType.locations)
                })
            }
            .navigationTitle("Home")
            .navigationDestination(for:RickAndMotyNavigationType.self){ screen in
                switch screen{
                case .characters: CharactersView()
                case .episodes:EpisodesView()
                case .locations:LocationsView()
                case .characterDetail:CharacterDetailView()
                case .episodeDetail: EpisodeDetail()
                case .locationDetail:LocationDetailView()
                }
            }
        }
    }
}

struct CardImage: View {
    let imageResource:String
    let title: String
    let action: () -> Void
    var body: some View {
        VStack(spacing: 0){
            Image(imageResource).resizable().frame(maxWidth: .infinity, maxHeight:.infinity)
            Text(title).fontWeight(.bold)	
        }.border(Color.black, width: 2).padding().onTapGesture {action()}
    }
}

#Preview {
    HomeScreen()
}
