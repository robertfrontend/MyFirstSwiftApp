//
//  DataPickerComponent.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct DataPickerComponent: View {
    
    @State var currentDate: Date = Date()
    
    var body: some View {
        VStack {
//            DatePicker("Selecciona", selection: $currentDate)
////                .datePickerStyle(WheelDatePickerStyle())
//                .datePickerStyle(GraphicalDatePickerStyle())
            
            // seleccionar fecha a partir de hoy
            Form {
                DatePicker("Fecha", selection: $currentDate, in: Date()..., displayedComponents: .date)
                Text(currentDate, style: .date)
                    .bold()
            }
       
            Spacer()
        }
       
    }
    
}

struct DataPickerComponent_Previews: PreviewProvider {
    static var previews: some View {
        DataPickerComponent()
    }
}
