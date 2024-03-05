//
//  astroApp.swift
//  astro
//
//  Created by Felipe Moreira on 1/16/24.
//

import SwiftUI
import SwiftData

@main

struct astroApp: App {
    
    var body: some Scene {
        
        WindowGroup {
            ContentView()
                .modelContainer(for: [Planet.self, Moon.self, SolarSystem.self, Galaxies.self, Universe.self])
            
        }
    }
}
