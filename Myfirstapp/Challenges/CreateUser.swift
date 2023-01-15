//
//  TextFieldComponent.swift
//  Myfirstapp
//
//  Created by Robert Romero Medina on 15/1/23.
//

import SwiftUI

struct CreateUser: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var text = "Escribe algo..."
    @State var counter = 0
    
    @State var userSucces = false
    
    
    func validateOk() {
        print(password, "password")
        if password.count >= 5 && username.count >= 5 {
            userSucces = true
        }else {
            userSucces = false
        }
//        if username != "" && password != "" {
//            userSucces = true
//        }else {
//            userSucces = false
//        }
    }
 
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
//                        validateOk()
                    })
                Text("\(userSucces ? "Usuario creado con exito" : "Faltan datos")")
                    .foregroundColor(!userSucces ? .red : .green)
                Button(
                    action: {validateOk()},
//                    action: {print("robert")},
                    label: {
                    Text("Create user")
                            .font(.title2)
                            .bold()
                            .padding(.horizontal, 30)
                            .padding(10)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            
                })
            }
            Spacer()
            
        }.padding()
    }
}

struct CreateUser_Previews: PreviewProvider {
    static var previews: some View {
        CreateUser()
    }
}
