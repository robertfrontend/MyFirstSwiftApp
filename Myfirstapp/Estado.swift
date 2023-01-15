//
//  Estado.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct Estado: View {
    @State var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("Counter \(counter)")
            Button("Increment value") {
                self.counter += 1
            }
        }
    }
}

struct Estado_Previews: PreviewProvider {
    static var previews: some View {
        Estado()
    }
}
