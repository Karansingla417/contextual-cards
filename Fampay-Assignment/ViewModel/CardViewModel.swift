//
//  CardViewModel.swift
//  Fampay-Assignment
//
//  Created by Karan singla on 02/02/24.
//

import Foundation

class CardViewModel: ObservableObject {
    
    // Publisher card
    @Published var cards = [CardModel]()
    
    // Fetch method: Fetches Card details from server
    func fetchCards(with urlString: String) async throws {
        
        guard let url = URL(string:  urlString) else {
            throw HttpError.badURl
        }
        
        let cardResponse:[CardModel] = try await HttpClient.shared.fetch(url: url)
        
        DispatchQueue.main.async {
            self.cards = cardResponse
        }
    }
}
