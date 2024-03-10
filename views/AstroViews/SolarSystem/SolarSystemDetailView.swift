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
        ZStack {
            VStack(spacing: 30) {
                Text(solarSystem.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .textCase(.uppercase)
                    .kerning(2)
                
                AsyncImage(url: URL(string: solarSystem.imageUrl)) { image in
                    image.image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                }
                .shadow(color: Color.white.opacity(0.5), radius: 10, x: 0, y: 5)
                
                Text(solarSystem.detail)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                
                Divider()
                                
                VStack(spacing: 15) {
                                        
                    if let age = solarSystem.age {
                        DetailCard(title: "Age", detail: age)

                    }
                    
                    if let diameter = solarSystem.diameter {
                        DetailCard(title: "Diameter", detail: diameter)
                    }
                    
                    if let mass = solarSystem.mass {
                        DetailCard(title: "Mass", detail: mass)
                    }
                    
                    if let temp = solarSystem.surfaceTemperature {
                        DetailCard(title: "Surface Temperature", detail: temp)
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
