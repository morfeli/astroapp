//
//  PlanetsView.swift
//  astro
//
//  Created by Felipe Moreira on 2/20/24.
//

import SwiftUI
import SwiftData

struct PlanetsView: View {
    @Binding var searchKey: String
    
    @Query(sort: \Planet.id) var planets: [Planet]
    
    
  var filteredPlanets: [Planet] {
      if searchKey.isEmpty {
          return planets
      }
      
      let filteredPlanets = planets.filter { item in
          let titleContainsQuery = !item.name.ranges(of: searchKey).isEmpty
          return titleContainsQuery
      }
      
      return filteredPlanets
  }
    
    var body: some View {
        ForEach(filteredPlanets, id: \.self) { planet in
            NavigationLink(destination: PlanetDetailView(planet: planet)) {
                PlanetCard(name: planet.name)
                
            }
            .foregroundStyle(.white)
        }
        
    }
}

