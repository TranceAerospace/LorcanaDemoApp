//
//  ContentView.swift
//  LorcanaTestApp
//
//  Created by Mark Trance on 9/29/23.
//

import SwiftUI

struct CardListView: View {
    @State private var viewModel = CardListViewModel()
    
    
    var body: some View {
        NavigationStack {
            List(viewModel.cards) { card in
                NavigationLink {
                    CardDetailView(card: card)
                } label: {
                    CardListRowView(card: card)
                }
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    CardListView()
}
