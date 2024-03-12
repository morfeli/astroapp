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
        ZStack {
            VStack(spacing: 30) {
                Text(galaxy.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .textCase(.uppercase)
                    .kerning(2)
                
                AsyncImage(url: URL(string: galaxy.imageUrl)) { image in
                    image.image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(12)
                        
                }
                .shadow(color: Color.white.opacity(0.5), radius: 10, x: 0, y: 5)
                
                Text(galaxy.detail)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                    .padding(8)
                    .background(.black.opacity(0.5))
                    .cornerRadius(10)
                
                VStack(spacing: 15) {
                    DetailCard(title: "Type", detail: galaxy.type)
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

