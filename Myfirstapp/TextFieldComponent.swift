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
    
    @State var text = "Escribe algo..."
    @State var counter = 0
    
    var body: some View {
        VStack {
            VStack {
                Text("TextField")
                    .font(.largeTitle)
                    .bold()
                Text("🚀Tu nombre de usuario es:")
                Text("\(username)")
                    .bold()
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
            }
            VStack {
                Text("Text editor")
                    .font(.largeTitle)
                    .bold()
                
                TextEditor(text: $text)
                    .font(.title)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .foregroundColor(.blue)
                    .padding(1)
                    .onChange(of: text, perform: {value in
                        counter = value.count
                    })
                
                Text("\(counter)")
                    .foregroundColor(counter <= 280 ? .green : .red)
                    .font(.largeTitle)
                
            }

            Spacer()
            
            
        }.padding()
    }
}

struct TextFieldComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldComponent()
    }
}
