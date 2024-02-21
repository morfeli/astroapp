//
//  SolarSystemView.swift
//  astro
//
//  Created by Felipe Moreira on 2/20/24.
//

import SwiftUI
import SwiftData

struct SolarSystemView: View {
    @Query var solarSystems: [SolarSystem]

    var body: some View {
        ForEach(solarSystems) { solar in
            PlanetCard(name: solar.name)
            
        }
    }
}

#Preview {
    SolarSystemView()
}
