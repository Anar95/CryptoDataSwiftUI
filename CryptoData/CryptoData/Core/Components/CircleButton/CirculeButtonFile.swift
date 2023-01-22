//
//  CirculeButtonFile.swift
//  CryptoData
//
//  Created by Anar Abbas on 22.01.2023.
//

import SwiftUI

struct CirculeButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName:iconName)
            .font(.system(size: 25))
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
               Circle()
                .foregroundColor(Color.theme.background)
            )
            .shadow(
                color: Color.theme.accent.opacity(0.25),
                radius: 10, x: 0, y: 0  )
            .padding()
    }
}

struct CirculeButtonFile_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CirculeButtonView(iconName: "info")
                .previewLayout(.sizeThatFits)
            
            CirculeButtonView(iconName: "plus")
             .previewLayout(.sizeThatFits)
             .colorScheme(.dark)
            
        }
    }
}
