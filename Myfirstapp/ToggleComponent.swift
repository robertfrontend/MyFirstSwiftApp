//
//  ToggleComponent.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 21/1/23.
//

import SwiftUI

struct ToggleComponent: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
        VStack {
            Form {
                Toggle("Suscribete papa", isOn: $isOn)
                Text("\(isOn.description)")
            }
        }
        Spacer()
    }
}

struct ToggleComponent_Previews: PreviewProvider {
    static var previews: some View {
        ToggleComponent()
    }
}
