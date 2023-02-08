//
//  HomeViewModel.swift
//  CryptoData
//
//  Created by Anar Abbas on 5.02.2023.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject{
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    private let dataService = CoinDataService()
    private var cansellables = Set<AnyCancellable>()
    
    init(){
        addSubscribers()
    }
    func addSubscribers(){
        
        dataService.$allCoins
            .sink { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cansellables)
        
    }
}
