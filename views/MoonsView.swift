//
//  MoonsView.swift
//  astro
//
//  Created by Felipe Moreira on 2/20/24.
//

import SwiftUI
import SwiftData

struct MoonsView: View {
    @Query var moons: [Moon]

    var body: some View {
        ForEach(moons) { moon in
            PlanetCard(name: moon.name)
            
        }

    }
}

#Preview {
    MoonsView()
}
