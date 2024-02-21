//
//  PlanetsView.swift
//  astro
//
//  Created by Felipe Moreira on 2/20/24.
//

import SwiftUI
import SwiftData

struct PlanetsView: View {
    @Query(sort: \Planet.id) var planets: [Planet]

    var body: some View {
        ForEach(planets) { planet in
            PlanetCard(name: planet.name, moons: planet.moons)
            
        }
    }
}

#Preview {
    PlanetsView()
}
