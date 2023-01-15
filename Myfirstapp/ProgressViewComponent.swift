//
//  ProgressViewComponent.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct ProgressViewComponent: View {
    
    @State var progress: Float = 0.0
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
                .padding(.horizontal, 40)
            Button("Progress"){
                progress += 0.1
                
            }.padding(.bottom, 40)

            if isLoading {
                ProgressView("Cargando...")
                    .scaleEffect(1.5)
            }
            Button("Cargando"){
                isLoading = !isLoading
                
            }.padding(10)

          
        }
  
        
    }
}

struct ProgressViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewComponent()
    }
}
