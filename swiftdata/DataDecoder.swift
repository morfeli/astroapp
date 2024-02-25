//
//  DataDecoder.swift
//  astro
//
//  Created by Felipe Moreira on 2/13/24.
//

import Foundation
import SwiftUI
import SwiftData

struct AstroScape: Decodable {
    let planets: [Planet]
    let moons: [Moon]
    let solarSystem: [SolarSystem]
    let galaxies: [Galaxies]
    let universe: [Universe]
}

