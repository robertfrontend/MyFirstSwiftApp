//
//  TextFieldComponent.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct TextFieldComponent: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                // input
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
            
                // styles
                .padding(8)
                .font(.headline)
                .background(.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                
                .onChange(of: username, perform: {value in
                    print("New email \(value)")
                })
            SecureField("Password", text: $password)
                // input
                .keyboardType(.default)
                .disableAutocorrection(true)
                .autocapitalization(.none)
            
                // styles
                .padding(8)
                .font(.headline)
                .background(.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)

                .onChange(of: password, perform: {value in
                    print("New password \(value)")
                })
            Spacer()
            
        }.padding()
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TextFieldComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldComponent()
    }
}
