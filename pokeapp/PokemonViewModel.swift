//
//  PokemonViewModel.swift
//  pokeapp
//
//  Created by Jemma Marin on 15/04/2024.
//

import Foundation


class PokemonViewModel: ObservableObject {
    @Published var listPokemon = [PokemonModel]()
    @Published var filteredPokemon = [PokemonModel]()
    
    init() {
        getListPokemon()
    }
    
    func getListPokemon() {
        NetworkManager.shared.getListOfPokemon { result in
            DispatchQueue.main.async {
                switch result {
                case .success( let listPokemon ):
                    print("listPokemon \(listPokemon.count)")
                    self.listPokemon = listPokemon
                    self.filteredPokemon = listPokemon
                
                case.failure(let error) :
                    print( " error: \(error.localizedDescription)")
                }
            }
        }
    }
}
