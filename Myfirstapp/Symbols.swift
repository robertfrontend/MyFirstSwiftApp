//
//  Symbols.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct Symbols: View {
    var body: some View {
        Image(systemName: "moon.circle.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 200)
            .foregroundColor(.green)
        
//        Text("Sigueme en Twitter")
//            .underline()
//            .font(.largeTitle)
//            .bold()
//            .padding()
    }
}

struct Symbols_Previews: PreviewProvider {
    static var previews: some View {
        Symbols()
    }
}
