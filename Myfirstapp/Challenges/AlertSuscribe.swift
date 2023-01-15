//
//  AlertSuscribe.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct AlertSuscribe: View {
    
    @State var like:Bool = true
    @State var activeBell = false
    @State var isSuscriptor = false
    
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
                            Button(action: {
                                like = true
                            }, label: {
                                Image(systemName: "hand.thumbsup.fill")
                                    .scaledToFit()
                                    .foregroundColor(like ? .blue : .black)
                                    .font(.system(size: 40))
                            })
                            // dislike
                            Button(action: {
                             like = false
                            }, label: {
                                Image(systemName: "hand.thumbsdown.fill")
                                    .scaledToFit()
                                    .foregroundColor(!like ? .blue : .black)
                                    .font(.system(size: 40))
                            })
                        }
                        VStack {
                        }.frame(width: 100, height: 5) .background(like ? .blue : .black)
                    }.padding()
                    VStack {
                        // button
                        HStack {
                            Button(action: {
                                isSuscriptor = !isSuscriptor
                            }, label: {
                                Text(isSuscriptor ? "Suscribed" : "Join Sus")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .padding(.all, 10)
                                    .background(!isSuscriptor ? .red : Color(hue: 0.958, saturation: 0.0, brightness: 0.36))
                                    .cornerRadius(10)
                            })
                            Button(action: {
                                activeBell = !activeBell
                            }, label: {
                                Image(systemName: activeBell ? "bell.and.waves.left.and.right.fill" : "bell")
                                    .scaledToFit()
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.20))
                                    .font(.system(size: 30))

                            })
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
