//
//  CircleButtonanimation.swift
//  CryptoData
//
//  Created by Anar Abbas on 22.01.2023.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    @Binding var animate : Bool
    var body: some View {
       Circle()
            .stroke(lineWidth: 7)
            .scale(animate ? 1 : 0)
            .opacity(animate ? 0 : 3)
            .animation(animate ? Animation.easeOut(duration: 1)
                       : .none)
            .onAppear{
                animate.toggle()
            }
        }
    }

struct CircleButtonanimation_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView(animate: .constant(false))
            .foregroundColor(.purple)
            .frame(width: 200, height: 200)
    }
}
