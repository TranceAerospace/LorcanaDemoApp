//
//  ContentViewModel.swift
//  LorcanaTestApp
//
//  Created by Mark Trance on 9/29/23.
//

import Foundation

@Observable
final class CardListViewModel {
    var cards = [Card]()
    
    private let APIservice = ApiServiceClass()
    
    init() {
        fetchCards()
    }
    
    func fetchCards() {
        Task {
            do {
                self.cards = try await APIservice.getAllCards()
            } catch {
                print("Error fetching cards: \(error)")
            }
        }
    
    }
}
