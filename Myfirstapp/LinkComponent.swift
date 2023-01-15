//
//  LinkComponent.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct LinkComponent: View {
    var body: some View {
        VStack {
            Link("Destinantion", destination: URL(string: "https://menudr.netlify.app")!)
                .padding(5)
            
            
            Link(destination: URL(string: UIApplication.openSettingsURLString)!, label: {
                Label("Setting", systemImage: "gear")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(12)
            })
        }
    }
}

struct LinkComponent_Previews: PreviewProvider {
    static var previews: some View {
        LinkComponent()
    }
}
