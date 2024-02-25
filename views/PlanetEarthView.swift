//
//  DailyPictureView.swift
//  astro
//
//  Created by Felipe Moreira on 1/28/24.
//

import SwiftUI
import SwiftData


struct PlanetEarthView: View {
    @Query var moons: [Moon]

    var body: some View {
        ForEach(moons) { moon in
            Text(moon.name)
                .foregroundStyle(.black)
        }
    }
    
}

