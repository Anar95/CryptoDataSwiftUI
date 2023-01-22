//
//  HomeView.swift
//  CryptoData
//
//  Created by Anar Abbas on 22.01.2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPortofolio: Bool = false
    
    var body: some View {
        ZStack{
            homeHeader
            
            Color.theme.background
                .ignoresSafeArea()
            
            VStack{
              
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
