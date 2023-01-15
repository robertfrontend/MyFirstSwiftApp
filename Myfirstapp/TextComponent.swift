//
//  TextComponent.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct TextComponent: View {
    var body: some View {
        VStack {
            Text("Aprende SwiftUI")
                .font(.largeTitle)
                .underline()
                .foregroundColor(.red)
    //            .rotation3DEffect(
    //                .degrees(20),
    //                axis: (x: 1, y: 0, z: 0))
    //            .shadow(color: .gray, radius: 2, x: 0, y: 10)
    //            .lineLimit(10)
    //            .lineSpacing(10)
    //            .padding()
            + Text("Lo mismo vamos a ver ")
                .foregroundColor(.blue)
                .bold()
            + Text("Si te gusta dale like compai")
                .foregroundColor(.green)
            
            VStack {
                Text(Date(), style: .date)
                Text(Date(), style: .timer)
                Text(Date().addingTimeInterval(3600), style: .timer)
                Text(Date(), style: .time)
            }.padding()
            
        }.padding()
    }
}

struct TextComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextComponent()
    }
}
