//
//  Card.swift
//  LorcanaTestApp
//
//  Created by Mark Trance on 9/29/23.
//

import Foundation

struct Card: Identifiable, Codable {
    let id = UUID()
    let set: String
    let loreValue: Int?
    let traits: [String]?
    
    let cardNumber: Int
    let color: String
    let strength: Int?
    let willpower: Int?
    let artist: String
    let subTypes: [String]?
    let subtitle: String?
    
    let type: String
    let setCode: String
    //let abilities: [String:String]?
    let inkable: Bool
    //let bodyText: String?
    //let effect: String?
    let imageUrls: ImageUrls
    let name: String
    let inkCost: Int
    let flavorText: String
    let rarity: String
    
    enum CodingKeys: String, CodingKey {
        case set
        case cardNumber = "card-number"
        case color
        case artist
        case type
        case setCode = "set-code"
        case loreValue = "lore-value"
        case strength
        case willpower
        case subTypes
        case subtitle
        case traits
        
        //case abilities
        case inkable
        //case bodyText = "body-text"
        //case effect
        case imageUrls = "image-urls"
        case name
        case inkCost = "ink-cost"
        case flavorText = "flavor-text"
        case rarity
    }

}

// MARK: - ImageUrls
struct ImageUrls: Codable {
    let small, noArt, large, artCrop: String
    let medium, foil: String
    
    enum CodingKeys: String, CodingKey {
        case small
        case noArt = "no-art"
        case large
        case artCrop = "art-crop"
        case medium, foil
    }
}


/*

{
    "set": "The First Chapter",
    "card-number": 170,
    "color": "Sapphire",
    "artist": "Grace Tran",
    "type": "Item",
    "set-code": "TFC",
    "abilities": {
        "Command": "{tap} - Chosen character gains Support this turn. (Whenever they quest, you may add their {strength} to another chosen character's {strength} this turn.)"
    },
    "inkable": true,
    "body-text": "COMMAND: {tap} - Chosen character gains Support this turn. (Whenever they quest, you may add their {strength} to another chosen character's {strength} this turn.)",
    "effect": "",
    "image-urls": {
        "small": "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-small.png",
        "no-art": "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-no-art.png",
        "large": "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-large.png",
        "art-crop": "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-art-crop.png",
        "medium": "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-medium.png",
        "foil": "https://lorcana-api.com/images/scepter_of_arendelle/scepter_of_arendelle-foil.png"
    },
    "name": "Scepter Of Arendelle",
    "ink-cost": 1,
    "flavor-text": "",
    "rarity": "Uncommon"
    },
*/
