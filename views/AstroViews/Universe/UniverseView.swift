//
//  UniverseView.swift
//  astro
//
//  Created by Felipe Moreira on 2/22/24.
//

import SwiftUI
import SwiftData

struct UniverseView: View {
    @Binding var searchKey: String

    @Query var universe: [Universe]
    
    var filteredUniverse: [Universe] {
        if searchKey.isEmpty {
            return universe
        }
        
        let filteredUniverse = universe.filter { item in
            let titleContainsQuery = !item.name.ranges(of: searchKey).isEmpty
            return titleContainsQuery
        }
        
        return filteredUniverse
    }
    

    var body: some View {
        ForEach(filteredUniverse, id: \.self) { body in
            NavigationLink(destination: UniverseDetailView(universe: body)) {
                PlanetCard(name: body.name, imageUrl: body.imageUrl)
            }
            .foregroundStyle(.white)
        }
    }
}

