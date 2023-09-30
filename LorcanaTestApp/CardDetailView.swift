//
//  CardDetailView.swift
//  LorcanaTestApp
//
//  Created by Mark Trance on 9/29/23.
//

import SwiftUI

struct CardDetailView: View {
    var card: Card
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: card.imageUrls.medium)) { image in
                image.resizable()
            
            } placeholder: {
                ProgressView()
            }
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 500)
            
            VStack {
                Text(card.name)
                    .font(.title)
                
                Text(card.subtitle ?? "")
                    .font(.title2)
            }
            
            HStack {
                Text("Card Number: \(card.cardNumber)")
                    
                   
            }
            
            Spacer()
        }
       
    }
}

#Preview {
    CardDetailView(card: Card(set: "The First Chapter", loreValue: 10, traits: [""], cardNumber: 170, color: "Black", strength: 10, willpower: 10, artist: "Tony Wang", subTypes: [""], subtitle: "The bandit", type: "Character", setCode: "TFC", inkable: true, imageUrls: ImageUrls(
        small: "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-small.png",
        noArt: "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-no-art.png",
        large: "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-large.png",
        artCrop: "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-art-crop.png",
        medium: "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-medium.png",
        foil: "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-foil.png"),
                             name: "Mickey Mouse", inkCost: 6, flavorText: "Mick Mouse is boss", rarity: "Rare"))
}
