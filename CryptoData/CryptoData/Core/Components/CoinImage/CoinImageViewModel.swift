//
//  CoinImageViewModel.swift
//  CryptoData
//
//  Created by Anar Abbas on 9.02.2023.
//

import Foundation
import SwiftUI

class CoinImageViewModel: ObservableObject{
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
      
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(urlString: coin.image)
        self.addSubscribers()
        self.isLoading = true
    }
    private func addSubscribers() {
        
        dataService.$image
            .sink { [weak self] ( ) in
                self?.isLoading = false
            } receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
            }
            .store(in: &cancelllables)
    }
}
