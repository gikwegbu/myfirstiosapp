//
//  SystemBackGroundMaterialScreen.swift
//  iosapp
//
//  Created by gikwegbu on 14/09/2022.
//

import SwiftUI

struct SystemBackGroundMaterialScreen: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 50, height: 4)
                    .padding(.vertical, 20)
                Spacer()
                    
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            // This is where the systemBackground is used, that blurry transparent look and feel
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .background(
            Image("single")
                .resizable()
        )
        .ignoresSafeArea()
    }
}

struct SystemBackGroundMaterialScreen_Previews: PreviewProvider {
    static var previews: some View {
        SystemBackGroundMaterialScreen()
    }
}
