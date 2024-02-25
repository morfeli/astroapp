//
//  SolarSystemDetailView.swift
//  astro
//
//  Created by Felipe Moreira on 2/22/24.
//

import SwiftUI

struct SolarSystemDetailView: View {
    let solarSystem: SolarSystem
      
    init(solarSystem: SolarSystem) {
          self.solarSystem = solarSystem
      }
    
    var body: some View {
        Text(solarSystem.name)
    }

}

