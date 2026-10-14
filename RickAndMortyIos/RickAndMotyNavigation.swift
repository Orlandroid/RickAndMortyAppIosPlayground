//
//  RickAndMotyNavigation.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 14/10/26.
//


enum RickAndMotyNavigationType {
    case home
    case characters
    case episodes
    case locations
    case characterDetail
    case episodeDetail
    case locationDetail
}

import SwiftUI

struct RickAndMotyNavigation: View {
    
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack{
            
        }
    }
}

#Preview {
    RickAndMotyNavigation()
}
