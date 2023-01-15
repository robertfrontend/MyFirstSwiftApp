//
//  Buttoncomponent.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct Buttoncomponent: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Subscribete")
            }, label: {
                Text("Suscriber".uppercased())
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(.red)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            })
            Button(action: {
                print("Dale like a mi post")
            }, label: {
                Circle()
                    .fill(.blue)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(.white)
                        .scaledToFit()
                        .font(.system(size: 70, weight: .bold))
                    )
            })
        }
    }
}

struct Buttoncomponent_Previews: PreviewProvider {
    static var previews: some View {
        Buttoncomponent()
    }
}
