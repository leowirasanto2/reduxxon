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
    let movies: [Movie]
}

enum Movie: String, Codable, CaseIterable {
    case starwars
    case avengers
}

extension Character: Identifiable {
    var id: String { name }
}

extension Character {
    // All Characters
    static let mockCharacters: [Character] = [
        .init(name: "Luke Skywalker", height: 172, mass: 77, hairColor: "blond", skinColor: "fair", eyeColor: "blue", birthYear: "19BBY", gender: "male", homeworld: "Tatooine", movies: [.starwars]),
        .init(name: "Darth Vader", height: 202, mass: 136, hairColor: "none", skinColor: "white", eyeColor: "yellow", birthYear: "41BBY", gender: "male", homeworld: "Tatooine", movies: [.starwars]),
        .init(name: "Leia Organa", height: 150, mass: 49, hairColor: "brown", skinColor: "light", eyeColor: "brown", birthYear: "19BBY", gender: "female", homeworld: "Alderaan", movies: [.starwars]),
        .init(name: "Han Solo", height: 180, mass: 82, hairColor: "blond", skinColor: "fair", eyeColor: "blue", birthYear: "19BBY", gender: "male", homeworld: "Tatooine", movies: [.starwars]),
        .init(name: "Iron Man", height: 188, mass: 88, hairColor: "red", skinColor: "fair", eyeColor: "blue", birthYear: "1963", gender: "male", homeworld: "Earth", movies: [.avengers]),
        .init(name: "Thor", height: 216, mass: 101, hairColor: "blond", skinColor: "fair", eyeColor: "blue", birthYear: "1911", gender: "male", homeworld: "Asgard", movies: [.avengers]),
        .init(name: "Black Widow", height: 158, mass: 49, hairColor: "black", skinColor: "fair", eyeColor: "blue", birthYear: "1942", gender: "female", homeworld: "Earth", movies: [.avengers]),
        .init(name: "Captain America", height: 180, mass: 82, hairColor: "blond", skinColor: "fair", eyeColor: "blue", birthYear: "1941", gender: "male", homeworld: "Earth", movies: [.avengers]),
        .init(name: "Hawkeye", height: 170, mass: 78, hairColor: "black", skinColor: "fair", eyeColor: "blue", birthYear: "1941", gender: "male", homeworld: "Earth", movies: [.avengers]),
        .init(name: "Spider-Man", height: 168, mass: 62, hairColor: "black", skinColor: "fair", eyeColor: "blue", birthYear: "1962", gender: "male", homeworld: "Earth", movies: [.avengers]),
        .init(name: "Wolverine", height: 188, mass: 88, hairColor: "black", skinColor: "fair", eyeColor: "blue", birthYear: "1989", gender: "male", homeworld: "Earth", movies: [.avengers]),
    ]
    
    // Starwars Characters
    static let starwarsCharacters: [Character] = [
        .init(name: "Luke Skywalker", height: 172, mass: 77, hairColor: "blond", skinColor: "fair", eyeColor: "blue", birthYear: "19BBY", gender: "male", homeworld: "Tatooine", movies: [.starwars]),
        .init(name: "Darth Vader", height: 202, mass: 136, hairColor: "none", skinColor: "white", eyeColor: "yellow", birthYear: "41BBY", gender: "male", homeworld: "Tatooine", movies: [.starwars]),
        .init(name: "Leia Organa", height: 150, mass: 49, hairColor: "brown", skinColor: "light", eyeColor: "brown", birthYear: "19BBY", gender: "female", homeworld: "Alderaan", movies: [.starwars]),
        .init(name: "Han Solo", height: 180, mass: 82, hairColor: "blond", skinColor: "fair", eyeColor: "blue", birthYear: "19BBY", gender: "male", homeworld: "Tatooine", movies: [.starwars]),
    ]
    
    // Avenger Characters
    static let avengerCharacters: [Character] = [
        .init(name: "Iron Man", height: 188, mass: 88, hairColor: "red", skinColor: "fair", eyeColor: "blue", birthYear: "1963", gender: "male", homeworld: "Earth", movies: [.avengers]),
        .init(name: "Thor", height: 216, mass: 101, hairColor: "blond", skinColor: "fair", eyeColor: "blue", birthYear: "1911", gender: "male", homeworld: "Asgard", movies: [.avengers]),
        .init(name: "Black Widow", height: 158, mass: 49, hairColor: "black", skinColor: "fair", eyeColor: "blue", birthYear: "1942", gender: "female", homeworld: "Earth", movies: [.avengers]),
        .init(name: "Captain America", height: 180, mass: 82, hairColor: "blond", skinColor: "fair", eyeColor: "blue", birthYear: "1941", gender: "male", homeworld: "Earth", movies: [.avengers]),
        .init(name: "Hawkeye", height: 170, mass: 78, hairColor: "black", skinColor: "fair", eyeColor: "blue", birthYear: "1941", gender: "male", homeworld: "Earth", movies: [.avengers]),
        .init(name: "Spider-Man", height: 168, mass: 62, hairColor: "black", skinColor: "fair", eyeColor: "blue", birthYear: "1962", gender: "male", homeworld: "Earth", movies: [.avengers]),
        .init(name: "Wolverine", height: 188, mass: 88, hairColor: "black", skinColor: "fair", eyeColor: "blue", birthYear: "1989", gender: "male", homeworld: "Earth", movies: [.avengers]),
    ]
    
    // For shimmer loading
    static let loadingData: [Character] = [
        .init(name: "Loading...", height: 0, mass: 0, hairColor: "", skinColor: "", eyeColor: "", birthYear: "", gender: "", homeworld: "", movies: []),
        .init(name: "Loading...2", height: 0, mass: 0, hairColor: "", skinColor: "", eyeColor: "", birthYear: "", gender: "", homeworld: "", movies: []),
        .init(name: "Loading...3", height: 0, mass: 0, hairColor: "", skinColor: "", eyeColor: "", birthYear: "", gender: "", homeworld: "", movies: []),
    ]
}
