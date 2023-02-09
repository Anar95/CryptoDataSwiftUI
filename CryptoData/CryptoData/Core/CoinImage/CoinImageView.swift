//
//  CoinImageView.swift
//  CryptoData
//
//  Created by Anar Abbas on 9.02.2023.
//

import SwiftUI
class CoinImageViewModel: ObservableObject{
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    
    
    init() {
        getImage()
    }
    private func getImage() {
        
    }
}

struct CoinImageView: View {
    
    @StateObject var vm: CoinImageViewModel = CoinImageViewModel()
    
    var body: some View {
        ZStack{
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            }else if vm.isLoading{
                ProgressView()
            }else {
                Image(systemName: "qusetionmarl")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}


struct CoinImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoinImageView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
