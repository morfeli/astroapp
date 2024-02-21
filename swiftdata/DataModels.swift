//
//  DataModels.swift
//  astro
//
//  Created by Felipe Moreira on 2/6/24.
//

import SwiftData
import Foundation


@Model
class Planet: Decodable, Identifiable {

    enum CodingKeys: CodingKey {
        case name, id, diameter, mass, moons, orbitDistance, orbitPeriod, surfaceTemperature, discoveryDate
    }
    
    var name: String
    var id: Int
    var diameter: String
    var mass: String
    var moons: String
    var orbitDistance: String
    var orbitPeriod: String
    var surfaceTemperature: String
    var discoveryDate: String?
    
    init(name: String, id: Int, diameter: String, mass: String, moons: String, orbitPeriod: String, orbitDistance: String, surfaceTemperature: String, discoveryDate: String) {
        self.name = name
        self.id = id
        self.diameter = diameter
        self.mass = mass
        self.moons = moons
        self.orbitPeriod = orbitPeriod
        self.orbitDistance = orbitDistance
        self.surfaceTemperature = surfaceTemperature
        self.discoveryDate = discoveryDate
    }
    
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        id = try container.decode(Int.self, forKey: .id)
        diameter = try container.decode(String.self, forKey: .diameter)
        mass = try container.decode(String.self, forKey: .mass)
        moons = try container.decode(String.self, forKey: .moons)
        orbitDistance = try container.decode(String.self, forKey: .orbitDistance)
        orbitPeriod = try container.decode(String.self, forKey: .orbitPeriod)
        surfaceTemperature = try container.decode(String.self, forKey: .surfaceTemperature)
        discoveryDate = try container.decodeIfPresent(String.self, forKey: .discoveryDate)
        

        
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(id, forKey: .id)
        try container.encode(diameter, forKey: .diameter)
        try container.encode(mass, forKey: .mass)
        try container.encode(moons, forKey: .moons)
        try container.encode(orbitDistance, forKey: .orbitDistance)
        try container.encode(orbitPeriod, forKey: .orbitPeriod)
        try container.encode(surfaceTemperature, forKey: .surfaceTemperature)
        try container.encode(discoveryDate, forKey: .discoveryDate)
}
        
}


@Model
class Moon: Decodable, Identifiable {

    enum CodingKeys: CodingKey {
        case name, diameter, mass, orbits, orbitDistance, orbitPeriod, surfaceTemperature, discoveryDate
    }
    
    var name: String
    var diameter: String
    var mass: String
    var orbitDistance: String
    var orbitPeriod: String?
    var surfaceTemperature: String
    var discoveryDate: String?
    
    init(name: String, diameter: String, mass: String, orbitPeriod: String, orbitDistance: String, surfaceTemperature: String, discoveryDate: String) {
        self.name = name
        self.diameter = diameter
        self.mass = mass
        self.orbitPeriod = orbitPeriod
        self.orbitDistance = orbitDistance
        self.surfaceTemperature = surfaceTemperature
        self.discoveryDate = discoveryDate
    }
    
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        diameter = try container.decode(String.self, forKey: .diameter)
        mass = try container.decode(String.self, forKey: .mass)
        orbitDistance = try container.decode(String.self, forKey: .orbitDistance)
        orbitPeriod = try container.decodeIfPresent(String.self, forKey: .orbitPeriod)
        surfaceTemperature = try container.decode(String.self, forKey: .surfaceTemperature)
        discoveryDate = try container.decodeIfPresent(String.self, forKey: .discoveryDate)
        

        
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(diameter, forKey: .diameter)
        try container.encode(mass, forKey: .mass)
        try container.encode(orbitDistance, forKey: .orbitDistance)
        try container.encode(orbitPeriod, forKey: .orbitPeriod)
        try container.encode(surfaceTemperature, forKey: .surfaceTemperature)
        try container.encode(discoveryDate, forKey: .discoveryDate)
}
        
}

////  "name": "Sun",
//"age": "4.6 Billion Years",
//  "type": "Yellow Dwarf (G2V)",
//  "diameter": "1,392,684 km",
//  "mass": "1.99 × 10^30 kg (333,060 Earths)",
//  "surfaceTemperature": "5,500 °C"
////  "description": "The Sun is the star at the centre of our solar system. It is an almost perfect sphere of super-hot gases whose gravity holds the solar system together. The energy produced by the Sun is essential for life on Earth and is a driving force behind the Earth’s weather."
//


@Model
class SolarSystem: Decodable, Identifiable {

    enum CodingKeys: CodingKey {
        case name, age, mass, diameter, surfaceTemperature, detail
    }
    
    var name: String
    var detail: String
    var age: String?
    var diameter: String?
    var mass: String?
    var surfaceTemperature: String?
   
    
    init(name: String, diameter: String, mass: String, age: String, surfaceTemperature: String, detail: String) {
        self.name = name
        self.diameter = diameter
        self.mass = mass
        self.surfaceTemperature = surfaceTemperature
        self.detail = detail
        self.age = age
    }
    
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        age = try container.decodeIfPresent(String.self, forKey: .age)
        diameter = try container.decodeIfPresent(String.self, forKey: .diameter)
        mass = try container.decodeIfPresent(String.self, forKey: .mass)
        detail = try container.decode(String.self, forKey: .detail)
        surfaceTemperature = try container.decodeIfPresent(String.self, forKey: .surfaceTemperature)
        
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(diameter, forKey: .diameter)
        try container.encode(mass, forKey: .mass)
        try container.encode(detail, forKey: .detail)
        try container.encode(surfaceTemperature, forKey: .surfaceTemperature)
        try container.encode(age, forKey: .age)
}
        
}

