//
//  ImageSwift.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct ImageSwift: View {
    var body: some View {
        Image("youtube")
//            .resizable(resizingMode: .tile)
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 96, height: 68)
            .foregroundColor(.blue)
        
    }
}

struct ImageSwift_Previews: PreviewProvider {
    static var previews: some View {
        ImageSwift()
    }
}
