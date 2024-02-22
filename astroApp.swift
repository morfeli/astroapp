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
            
                .modelContainer(for: [Planet.self, Moon.self, SolarSystem.self, Galaxies.self]) { result in
                    do {
                        let container = try result.get()
                        
                        let descriptor = FetchDescriptor<Planet>()
                        let moonDescriptor = FetchDescriptor<Moon>()
                        let solarDescription = FetchDescriptor<SolarSystem>()
                        let galaxyDescription = FetchDescriptor<Galaxies>()


                        
                        let existingPlanets = try container.mainContext.fetchCount(descriptor)
                        let exisitingMoons = try container.mainContext.fetchCount(moonDescriptor)
                        let exisitingSolars = try container.mainContext.fetchCount(solarDescription)
                        let exisitingGalaxies = try container.mainContext.fetchCount(galaxyDescription)

                        

                        
                        
                        print(existingPlanets, exisitingMoons, exisitingSolars, exisitingGalaxies)

                        guard existingPlanets == 0 && exisitingMoons == 0 && exisitingSolars == 0  && exisitingGalaxies == 0 else {
                                   return
                               }
                        
//
                        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
                            fatalError("Failed to find data.json")
                        }

                        let jsonData = try Data(contentsOf: url)
                        
                        
                        let loadedData = try JSONDecoder().decode(PlanetsData.self, from: jsonData)
                    
//                        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
//                            fatalError("Failed to find data.json")
//                        }
//
//                        let jsonData = try Data(contentsOf: url)
//                        
//                        
//
//                        let loadedData = try JSONDecoder().decode(PlanetsData.self, from: jsonData)
                        
                        
                    
                        
                    } catch {
                        print("Failed to pre-seed database.", error)
                    }
                }
           
        
        }
    }
}


