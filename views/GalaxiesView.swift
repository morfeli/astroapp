//
//  GalaxiesView.swift
//  astro
//
//  Created by Felipe Moreira on 2/21/24.
//

import SwiftUI
import SwiftData

struct GalaxiesView: View {
    @Query var galaxies: [Galaxies]

    var body: some View {
        ForEach(galaxies) { galaxy in
            PlanetCard(name: galaxy.name)
            
        }
    }
}

#Preview {
    GalaxiesView()
}
