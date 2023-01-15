//
//  AlertSuscribe.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct AlertSuscribe: View {
    var body: some View {
        // Reto 1
        VStack {
            Text("Challenge 1")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)
            VStack {
                
                HStack {
                    VStack {
                        HStack {
                            // like
                            Image(systemName: "hand.thumbsup.fill")
                                .scaledToFit()
                                .foregroundColor(.blue)
                                .font(.system(size: 40))
                          
                            // dislike
                            Image(systemName: "hand.thumbsdown.fill")
                                .scaledToFit()
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.20))
                                .font(.system(size: 40))
                        }
                        VStack {
                        }.frame(width: 100, height: 5) .background(.blue)
                    }.padding()
                    VStack {
                        // button
                        HStack {
                            Button(action: {print("Nincee")}, label: {
                                Text("Suscribete")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .padding(.all, 10)
                                    .background(Color(hue: 0.958, saturation: 0.0, brightness: 0.36))
                                    .cornerRadius(10)
                            })
                            Image(systemName: "bell.and.waves.left.and.right.fill")
                                .scaledToFit()
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.20))
                                .font(.system(size: 30))
                        }
                    }
                }
                
                
            }.frame( width: 350, height: 100)
                .background(Color(hue: 0.603, saturation: 0.0, brightness: 0.881))
                .cornerRadius(10)
            .padding()
        }
    }
}

struct AlertSuscribe_Previews: PreviewProvider {
    static var previews: some View {
        AlertSuscribe()
    }
}
