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
            VStack {
                Text(planet.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .textCase(.uppercase)
                VStack {
                    AsyncImage(url: URL(string: planet.imageUrl)) { image in
                        image.image?
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .shadow(color: Color.white.opacity(0.5), radius: 10, x: 0, y: 5)
                }
                
                Text(planet.moons)
                Text(planet.surfaceTemperature)
                Spacer()
            }
            .foregroundStyle(.white)
            .background(Image("astro-wallpaper-6"))
    }
}


