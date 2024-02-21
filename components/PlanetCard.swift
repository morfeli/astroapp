//
//  PlanetCard.swift
//  astro
//
//  Created by Felipe Moreira on 2/13/24.
//

import SwiftUI

struct PlanetCard: View {
    
    var name: String
    var moons: String?

    
    var body: some View {
        VStack {
            Text(name)
            
        }
            .frame(width: 170, height: 180)
            .background(.blue)
            .cornerRadius(20)
         
            
        
    }
}

#Preview {
    PlanetCard(name: "", moons: "")
}
