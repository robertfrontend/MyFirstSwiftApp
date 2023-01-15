//
//  ColorPickerComponent.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct ColorPickerComponent: View {
    
    @State var color: Color = .blue
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(color)
                .frame(width: 300, height: 60)
            ColorPicker("Selecciona un color", selection: $color)
            Spacer()
        }.padding(60)
    }
}

struct ColorPickerComponent_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerComponent()
    }
}
