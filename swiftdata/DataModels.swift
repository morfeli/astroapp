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

//{
//  "name": "Milky Way Galaxy",
//    "type": "Barred Spiral",
//    "diameter": "100,000 - 180,000 ly",
//    "distanceToGalacticCentre": "27,000 ly",
//    "mass": "800 - 1,500 M☉",
//    "age": "13.6 Billion years",
//    "numberOfStars": "100 - 400 billion",
//    "constellation": "Sagittarius",
//    "group": "Local Group",
//    "description": "The Milky Way Galaxy is our home galaxy in the universe. It is a fairly typical barred spiral with four major arms in its disk, at least one spur, and a newly discovered outer arm. The galactic centre, which is located about 26,000 light-years from Earth, contains at least one supermassive black hole (called Sagittarius A*), and is crossed by a bar. It is also home to a diverse array of celestial objects, including star clusters, nebulae, and planetary systems."
//},

@Model
class Galaxies: Decodable, Identifiable {

    enum CodingKeys: CodingKey {
        case name,type, age, mass, diameter, detail, numberOfStars, constellation, group, distanceToGalacticCentre, designation, distance
    }
    
    var name: String
    var type: String
    var detail: String
    var mass: String?
    var constellation: String
    var numberOfStars: String?
    var group: String?
    var distance: String?
    var distanceToGalacticCentre: String?
    var designation: String?
    var diameter: String?
    var age: String?

   
    
    init(name: String, diameter: String, mass: String, age: String, designation: String, detail: String, constellation: String, numberOfStars: String, distanceToGalacticCentre: String, type: String, group: String, distance: String) {
        self.name = name
        self.diameter = diameter
        self.mass = mass
        self.detail = detail
        self.age = age
        self.designation = designation
        self.constellation = constellation
        self.numberOfStars = numberOfStars
        self.distanceToGalacticCentre = distanceToGalacticCentre
        self.type = type
        self.group = group
        self.distance = distance
    }
    
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        age = try container.decodeIfPresent(String.self, forKey: .age)
        diameter = try container.decodeIfPresent(String.self, forKey: .diameter)
        mass = try container.decodeIfPresent(String.self, forKey: .mass)
        detail = try container.decode(String.self, forKey: .detail)
        designation = try container.decodeIfPresent(String.self, forKey: .designation)
        constellation = try container.decode(String.self, forKey: .constellation)
        numberOfStars = try container.decodeIfPresent(String.self, forKey: .numberOfStars)
        distanceToGalacticCentre = try container.decodeIfPresent(String.self, forKey: .distanceToGalacticCentre)
        type = try container.decode(String.self, forKey: .type)
        group = try container.decodeIfPresent(String.self, forKey: .group)
        distance = try container.decodeIfPresent(String.self, forKey: .distance)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(diameter, forKey: .diameter)
        try container.encode(mass, forKey: .mass)
        try container.encode(detail, forKey: .detail)
        try container.encode(designation, forKey: .designation)
        try container.encode(constellation, forKey: .constellation)
        try container.encode(distanceToGalacticCentre, forKey: .distanceToGalacticCentre)
        try container.encode(age, forKey: .age)
        try container.encode(group, forKey: .group)
        try container.encode(numberOfStars, forKey: .numberOfStars)
        try container.encode(type, forKey: .type)
        try container.encode(distance, forKey: .distance)
}
        
}

