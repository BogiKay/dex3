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
        ScrollView {
            ZStack {
                Image("normalgrasselectricpoisonfairy")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 6)
                
                AsyncImage(url: pokemon.sprite) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 50)
                        .shadow(color: .black, radius: 6)
                } placeholder: {
                    ProgressView()
                }
            }
            
            HStack() {
                ForEach(pokemon.types!, id: \.self) { type in
                    Text(type.capitalized)
                        .font(.title2)
                        .shadow(color: .white, radius: 1)
                        .padding([.top, .bottom], 7)
                        .padding([.leading, .trailing])
                        .background(Color(type.capitalized))
                        .clipShape(.rect(cornerRadius: 50))
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    PokemonDetail().environmentObject(SamplePokemon.samplePokemon)
}
