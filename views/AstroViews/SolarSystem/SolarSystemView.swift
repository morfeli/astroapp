//
//  SolarSystemView.swift
//  astro
//
//  Created by Felipe Moreira on 2/20/24.
//

import SwiftUI
import SwiftData

struct SolarSystemView: View {
    @Binding var searchKey: String

    @Query var solarSystems: [SolarSystem]
    
    var filteredSolarSystems: [SolarSystem] {
        if searchKey.isEmpty {
            return solarSystems
        }
        
        let filteredSolarSystems = solarSystems.filter { item in
            let titleContainsQuery = !item.name.ranges(of: searchKey).isEmpty
            return titleContainsQuery
        }
        
        return filteredSolarSystems
    }

    var body: some View {
        ForEach(filteredSolarSystems, id: \.self) { solar in
            NavigationLink(destination: SolarSystemDetailView(solarSystem: solar)) {
                PlanetCard(name: solar.name, imageUrl: solar.imageUrl)
            }
            .foregroundStyle(.white)
            
        }
    }
}
