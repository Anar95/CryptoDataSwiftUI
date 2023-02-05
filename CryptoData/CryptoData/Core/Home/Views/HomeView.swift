//
//  HomeView.swift
//  CryptoData
//
//  Created by Anar Abbas on 22.01.2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var vm: HomeViewModel
    @State private var showPortofolio: Bool = false
    
    var body: some View {
        ZStack{
         
            
            Color.theme.background
                .ignoresSafeArea()
            
            VStack{
                homeHeader
                List{
                    CoinRowView(coin: DeveloperPreview.instance.coin, showHoldingsColumn: false)
                    
                }
                .listStyle(PlainListStyle())
              
                        Spacer(minLength: 0)
            }
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            
            HomeView()
                .navigationBarHidden(true)
        }
        .environmentObject(dev.homeVM)
    }
}
extension HomeView{
    private var homeHeader: some View{
        HStack{
            CirculeButtonView(iconName: showPortofolio ? "plus" : "info")
                .animation(.none)
                .background(
                CircleButtonAnimationView(animate: $showPortofolio) )
                
            Spacer()
            Text(showPortofolio ? "Portfolio" : "Live Pirces")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none)
            Spacer()
            
            CirculeButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortofolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()){
                        showPortofolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
