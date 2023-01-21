//
//  SliderComponent.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 21/1/23.
//

import SwiftUI

struct SliderComponent: View {
    @State var iPhoneCounter: Float = 5.0
    @State var isEditing: Bool = false
    
    var body: some View {
        Form {
            Slider(
                value: $iPhoneCounter,
                in: 0...10,
                step: 1,
                onEditingChanged: {(editing) in
                    isEditing = editing
                },
                minimumValueLabel: Text("Min"),
                maximumValueLabel: Text("Max")) {
                    Text("Selecciona numero de iPhones")
                }
            Text("\(iPhoneCounter)")
                .foregroundColor(isEditing ? .green : .black)
        }
    }
}

struct SliderComponent_Previews: PreviewProvider {
    static var previews: some View {
        SliderComponent()
    }
}
