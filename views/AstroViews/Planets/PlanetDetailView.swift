//
//  DetailedAstroView.swift
//  astro
//
//  Created by Felipe Moreira on 2/22/24.
//

import SwiftUI

struct PlanetDetailView: View {
    let planet: Planet
      
      init(planet: Planet) {
          self.planet = planet
      }
    
    var body: some View {
        Text(planet.name)
    }
}

