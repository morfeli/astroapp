//
//  DetailedAstroView.swift
//  astro
//
//  Created by Felipe Moreira on 2/22/24.
//

import SwiftUI

struct PlanetDetailView: View {
    var planet: Planet
      
      init(planet: Planet) {
          self.planet = planet
          
      }
    
    
    var body: some View {
        ZStack {
      
            VStack {

                Text(planet.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .textCase(.uppercase)
                    .kerning(2)
                
                AsyncImage(url: URL(string: planet.imageUrl)) { image in
                    image.image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                }
                .shadow(color: Color.white.opacity(0.5), radius: 10, x: 0, y: 5)
                
                Text(planet.detail)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                
                
                Divider()
                
                VStack(spacing: 15) {
                    
                    DetailCard(title: "Moons", detail: planet.moons == "None" ? "0" : planet.moons)
                    DetailCard(title: "Diameter", detail: planet.diameter)
                    DetailCard(title: "Mass", detail: planet.mass)
                    DetailCard(title: "Orbit Period", detail: planet.orbitPeriod)
                    DetailCard(title: "Orbit Distance", detail: planet.orbitDistance)
                    DetailCard(title: "Surface Temperature", detail: planet.surfaceTemperature)
                
                    if let discoveryDate = planet.discoveryDate {
                     DetailCard(title: "Discovery Date", detail: discoveryDate)
                       
                  }
                        
              }
                .padding(8)
                .background(.black.opacity(0.5))
                .cornerRadius(10)
            }
            
            
            

       
        
            
        
        }
        .padding()
        .foregroundStyle(.white)
        .background(Image("astro-wallpaper-6"))
    }
}


