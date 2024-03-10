//
//  MoonDetailView.swift
//  astro
//
//  Created by Felipe Moreira on 2/22/24.
//

import SwiftUI

struct MoonDetailView: View {
    var moon: Moon
      
      init(moon: Moon) {
          self.moon = moon
          
      }
    
    var body: some View {
        ZStack {
            VStack(spacing: 30) {
                Text(moon.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .textCase(.uppercase)
                    .kerning(2)
                
                AsyncImage(url: URL(string: moon.imageUrl)) { image in
                    image.image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                        
                }
                .shadow(color: Color.white.opacity(0.5), radius: 10, x: 0, y: 5)
                
                                
                VStack(spacing: 15) {
                    DetailCard(title: "Diameter", detail: moon.diameter)
                    DetailCard(title: "Mass", detail: moon.mass)
                    DetailCard(title: "Orbit Distance", detail: moon.orbitDistance)
                    DetailCard(title: "Surface Temperature", detail: moon.surfaceTemperature)
                    DetailCard(title: "Orbits", detail: moon.orbits)
                    
                    if let discoveryDate = moon.discoveryDate {
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

