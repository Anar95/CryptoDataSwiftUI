//
//  CryptoDataApp.swift
//  CryptoData
//
//  Created by Anar Abbas on 22.01.2023.
//

import SwiftUI

@main
struct CryptoDataApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
