//
//  NavigationManager.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 20/10/26.
//

import Foundation
import SwiftUI

@Observable
class NavigationManager{
    
    static let shared = NavigationManager()
    
    private init() { }
    
    var path = NavigationPath()
}
