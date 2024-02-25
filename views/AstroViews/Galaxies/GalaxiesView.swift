//
//  GalaxiesView.swift
//  astro
//
//  Created by Felipe Moreira on 2/21/24.
//

import SwiftUI
import SwiftData

struct GalaxiesView: View {
    @Binding var searchKey: String

    @Query var galaxies: [Galaxies]
    
    var filteredGalaxies: [Galaxies] {
        if searchKey.isEmpty {
            return galaxies
        }
        
        let filteredGalaxies = galaxies.filter { item in
            let titleContainsQuery = !item.name.ranges(of: searchKey).isEmpty
            return titleContainsQuery
        }
        
        return filteredGalaxies
    }

    var body: some View {
        ForEach(filteredGalaxies, id: \.self) { galaxy in
            NavigationLink(destination: GalaxyDetailView(galaxy: galaxy)) {
                PlanetCard(name: galaxy.name)
            }
            .foregroundStyle(.white)
        }
    }
}

