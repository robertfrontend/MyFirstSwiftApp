//
//  ContentView.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 14/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Siguiendo")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .bold()
                Text("CANALES RECOMENDADOS")
                    .foregroundColor(.gray)
                HStack {
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 118, height: 68)
                    VStack(alignment: .leading) {
                        HStack {
                            Circle()
                                .foregroundColor(.blue)
                                .frame(width: 10.0, height: 10.0)
                                
                            Text("Username")
                                .font(.headline)
                        }
                        Text("Streaming with programming")
                            .foregroundColor(.gray)
                        Text("Only speak")
                            .foregroundColor(.gray)
                    }
                }
                
                // Swift Image
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("Swift Image")
                        .font(.title)
                        .bold()
                    Image("youtube")

                }
                .padding(.top, 80)
            }
            
            Text("Suscribe a Robertfrontend")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .underline()
                .background(.black)
                .rotationEffect(.degrees(-20))
        }
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
