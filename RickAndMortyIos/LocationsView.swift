//
//  LocationsView.swift
//  RickAndMortyIos
//
//  Created by Orlando Lopez on 06/10/26.
//

import SwiftUI

struct LocationsView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing:0){
                ForEach(0..<32){item in
                    LocationItem()
                }
            }
        }
    }
}


struct LocationItem: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Earth (C-137)").bold()
                Text("Planet")
            }
            Spacer()
            Image(systemName: "arrow.right.circle.fill")
        }.padding(.horizontal,32).padding(.vertical,8).frame(maxWidth:.infinity, alignment: .leading).border(.black)
    }
}

#Preview {
    LocationsView()
}
