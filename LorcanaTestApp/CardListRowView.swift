//
//  CardListRowView.swift
//  LorcanaTestApp
//
//  Created by Mark Trance on 9/29/23.
//

import SwiftUI

struct CardListRowView: View {
    
    var card: Card
    
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                AsyncImage(url: URL(string: card.imageUrls.artCrop)) { image in
                    image.resizable()
                
                } placeholder: {
                    ProgressView()
                }
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 40, height: 40)
                
                Text("\(card.cardNumber)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            VStack(alignment: .leading) {
                Text(card.name)
                Text(card.subtitle ?? "")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
           
        
        }
    }
}

#Preview {
    ZStack {
        Color.gray
            .ignoresSafeArea()
        CardListRowView(card: Card(set: "The First Chapter", loreValue: 10, traits: [""], cardNumber: 170, color: "Black", strength: 10, willpower: 10, artist: "Tony Wang", subTypes: [""], subtitle: "The bandit", type: "Character", setCode: "TFC", inkable: true, imageUrls: ImageUrls(
            small: "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-small.png",
            noArt: "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-no-art.png",
            large: "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-large.png",
            artCrop: "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-art-crop.png",
            medium: "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-medium.png",
            foil: "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-foil.png"),
                                   name: "Mickey Mouse", inkCost: 6, flavorText: "Mick Mouse is boss", rarity: "Rare")).background()
    }
}
