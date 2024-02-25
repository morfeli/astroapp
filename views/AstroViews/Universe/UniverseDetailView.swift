//
//  UniverseDetailView.swift
//  astro
//
//  Created by Felipe Moreira on 2/22/24.
//

import SwiftUI

struct UniverseDetailView: View {
    let universe: Universe
      
    init(universe: Universe) {
          self.universe = universe
      }
    
    var body: some View {
        Text(universe.name)
    }

}

