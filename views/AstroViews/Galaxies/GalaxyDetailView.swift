//
//  GalaxyDetailView.swift
//  astro
//
//  Created by Felipe Moreira on 2/22/24.
//

import SwiftUI

struct GalaxyDetailView: View {
    let galaxy: Galaxies
      
    init(galaxy: Galaxies) {
          self.galaxy = galaxy
      }
    
    var body: some View {
        Text(galaxy.name)
    }
}

