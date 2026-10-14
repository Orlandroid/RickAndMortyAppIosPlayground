//
//  ContentView.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 06/10/26.
//

import SwiftUI

struct HomeScreen: View {
    
    
    
    enum RickAndMotyNavigationType {
        case characters
        case episodes
        case locations
        case characterDetail
        case episodeDetail
        case locationDetail
    }
    
    @State var navigationPath = NavigationPath()
    
    
    var body: some View {
        NavigationStack(path: $navigationPath){
            VStack {
                CardImage(imageResource: "rick_and_morty", title: "CHARACTERS", action: {
                    print("Characters clicked")
                    navigationPath.append(RickAndMotyNavigationType.characters)
                })
                CardImage(imageResource: "img_episode", title: "LOCATIONS", action: {
                    print("Locations clicked")
                    navigationPath.append(RickAndMotyNavigationType.locations)
                })
                CardImage(imageResource: "img_location", title: "EPISODES", action: {
                    print("Episodes clicked")
                    navigationPath.append(RickAndMotyNavigationType.episodes)
                })
            }
            .navigationDestination(for:RickAndMotyNavigationType.self){ screen in
                switch screen{
                case .characters: CharactersView()
                case .episodes:EpisodesView()
                case .locations:LocationsView()
                case .characterDetail:CharactersView()
                case .episodeDetail: CharactersView()
                case .locationDetail:CharactersView()
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
