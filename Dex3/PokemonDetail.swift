//
//  PokemonDetail.swift
//  Dex3
//
//  Created by Bogusz Kaszowski on 19/05/2024.
//

import SwiftUI
import CoreData

struct PokemonDetail: View {
    @EnvironmentObject var pokemon: Pokemon

    var body: some View {
        Text("Hello, World \(pokemon.name!)!")
    }
}

#Preview {
    PokemonDetail().environmentObject(SamplePokemon.samplePokemon)
}
