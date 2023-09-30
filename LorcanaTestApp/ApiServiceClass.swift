//
//  ApiServiceClass.swift
//  LorcanaTestApp
//
//  Created by Mark Trance on 9/29/23.
//

import Foundation

final class ApiServiceClass {
    
    private let urlString = "https://api.lorcana-api.com/search?image-urls~i?displayDetails=true"
    
    
    
    
    func getAllCards() async throws -> [Card] {
        
        guard let url = URL(string: urlString) else { return [] }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            print("Response: \(response)")
            
            let cards = try JSONDecoder().decode([Card].self, from: data)
            
            return cards
        
        } catch {
            print("Error: \(error)")
            return []
        }
    }
    
    
    
    
    
    
}
