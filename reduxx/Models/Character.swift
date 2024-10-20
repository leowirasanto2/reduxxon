//
//  Character.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 20/10/24.
//

import Foundation

struct Character: Codable, Equatable {
    let name: String
    let height: Int
    let mass: Int
    let hairColor: String
    let skinColor: String
    let eyeColor: String
    let birthYear: String
    let gender: String
    let homeworld: String
}

extension Character: Identifiable {
    var id: String { name }
}

extension Character {
    static let mockCharacters: [Character] = [
        .init(name: "Luke Skywalker", height: 172, mass: 77, hairColor: "blond", skinColor: "fair", eyeColor: "blue", birthYear: "19BBY", gender: "male", homeworld: "Tatooine"),
        .init(name: "Darth Vader", height: 202, mass: 136, hairColor: "none", skinColor: "white", eyeColor: "yellow", birthYear: "41BBY", gender: "male", homeworld: "Tatooine"),
        .init(name: "Leia Organa", height: 150, mass: 49, hairColor: "brown", skinColor: "light", eyeColor: "brown", birthYear: "19BBY", gender: "female", homeworld: "Alderaan"),
        .init(name: "Han Solo", height: 180, mass: 82, hairColor: "blond", skinColor: "fair", eyeColor: "blue", birthYear: "19BBY", gender: "male", homeworld: "Tatooine"),
    ]
    
    static let loadingData: [Character] = [
        .init(name: "Loading...", height: 0, mass: 0, hairColor: "", skinColor: "", eyeColor: "", birthYear: "", gender: "", homeworld: ""),
        .init(name: "Loading...2", height: 0, mass: 0, hairColor: "", skinColor: "", eyeColor: "", birthYear: "", gender: "", homeworld: ""),
        .init(name: "Loading...3", height: 0, mass: 0, hairColor: "", skinColor: "", eyeColor: "", birthYear: "", gender: "", homeworld: "")
    ]
}
