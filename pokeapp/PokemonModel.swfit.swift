//
//  PokemonModel.swfit.swift
//  pokeapp
//
//  Created by Jemma Marin on 15/04/2024.
//

import Foundation


struct PokemonModel: Codable, Hashable {
    let id: Int
    let attack: Int
    let defense: Int
    let description: String
    let name: String
    let imageUrl: String
    let type: String
}
