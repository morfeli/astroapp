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
        ZStack {
            VStack(spacing:30) {
                Text(universe.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .textCase(.uppercase)
                    .kerning(2)
                
                AsyncImage(url: URL(string: universe.imageUrl)) { image in
                    image.image?
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 300)
                        .cornerRadius(12)
                        
                }
                .shadow(color: Color.white.opacity(0.5), radius: 10, x: 0, y: 5)
                
                Text(universe.detail)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)

            }
        }
        .padding()
        .foregroundStyle(.white)
        .background(Image("astro-wallpaper-6"))
    }
}
