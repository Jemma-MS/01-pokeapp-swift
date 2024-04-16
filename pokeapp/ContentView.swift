//
//  ContentView.swift
//  pokeapp
//
//  Created by Jemma Marin on 15/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.listPokemon, id: \.id) { pokemon in
                Text(pokemon.name)}
        }
    }
}

#Preview {
    ContentView()
}
