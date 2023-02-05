//
//  HomeViewModel.swift
//  CryptoData
//
//  Created by Anar Abbas on 5.02.2023.
//

import Foundation

class HomeViewModel: ObservableObject{
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    init(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.allCoins.append(DeveloperPreview.instance.coin)
        }
    }
    
}
