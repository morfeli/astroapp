//
//  DataDecoder.swift
//  astro
//
//  Created by Felipe Moreira on 2/13/24.
//

import Foundation
import SwiftUI
import SwiftData

struct PlanetsData: Decodable {
    let planets: [Planet]
    let moons: [Moon]
    let solarSystem: [SolarSystem]
}

