//
//  MoonsView.swift
//  astro
//
//  Created by Felipe Moreira on 2/20/24.
//

import SwiftUI
import SwiftData

struct MoonsView: View {
    @Binding var searchKey: String

    @Query var moons: [Moon]
    
    
    var filteredMoons: [Moon] {
        if searchKey.isEmpty {
            return moons
        }
        
        let filteredMoons = moons.filter { item in
            let titleContainsQuery = !item.name.ranges(of: searchKey).isEmpty
            return titleContainsQuery
        }
        
        return filteredMoons
    }

    var body: some View {
        ForEach(filteredMoons, id: \.self) { moon in
            NavigationLink(destination: MoonDetailView(moon:moon)) {
                PlanetCard(name: moon.name, imageUrl: moon.imageUrl)
            }
            .foregroundStyle(.white)
            
        }

    }
}

