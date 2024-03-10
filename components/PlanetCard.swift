//
//  PlanetCard.swift
//  astro
//
//  Created by Felipe Moreira on 2/13/24.
//

import SwiftUI

struct PlanetCard: View {
    
    var name: String
    var imageUrl: String

    
    var body: some View {
        VStack {
                AsyncImage(url: URL(string: imageUrl)) { image in
                    image.image?
                        .resizable()
                        .scaledToFill()
                        .opacity(0.7)
                }
        
                  
            }
            .frame(width: 170, height: 180)
            .background(.black.opacity(0.7))
            .cornerRadius(20)
            .overlay {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Text(name)
                            .font(.subheadline)
                            .foregroundStyle(.white)
                            .padding(.trailing, 10)
                            .padding(.bottom, 5)
                    }
                      
                }
           
            }
    }
}

#Preview {
    PlanetCard(name: "Moon", imageUrl: "https://nineplanets.org/wp-content/uploads/2020/03/venus.png")
}
