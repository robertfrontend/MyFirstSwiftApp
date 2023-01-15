//
//  Label.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct LabelCur: View {
    var body: some View {
        Label("Suscribete", systemImage: "hand.thumbsup.fill")
            .font(.largeTitle)
            .labelStyle(IconOnlyLabelStyle())
    }
}

struct Label_Previews: PreviewProvider {
    static var previews: some View {
        LabelCur()
    }
}
