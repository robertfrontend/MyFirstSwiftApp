//
//  StepperComponent.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 21/1/23.
//

import SwiftUI

struct StepperComponent: View {
    
    @State var iPhonecounter: Int = 1
    
    func inCrement() {
        print("Incrementtt")
    }
 
    var body: some View {
        Form {
            Stepper("Iphone \(iPhonecounter)", value: $iPhonecounter, in: 1...5, step: 1)
            
            Stepper("iPhone \(iPhonecounter)", onIncrement: {
                iPhonecounter += 1
                inCrement()
                
            }, onDecrement: {
                iPhonecounter -= 1
            })
        }
    }
}

struct StepperComponent_Previews: PreviewProvider {
    static var previews: some View {
        StepperComponent()
    }
}
