//
//  SignUp.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 04/09/24.
//

import SwiftUI

struct SignUp: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ZStack {
                Colors.lightGreen
                    .ignoresSafeArea()
                
                VStack {
                    Image("Logo_App")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaledToFit()
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        
                    
                    Text("OCOYUCAN LENS")
                        .font(TextStyles.logo_title)
                        .foregroundColor(Colors.mainGreen)
                    
                    Spacer()  
                    
                    InputView(text: $email,
                              placeholder: "Correo electrónico",
                              icon: "envelope.fill",
                              title: "Correo electrónico")
                    
                    InputView(text: $password,
                              placeholder: "Ingrese su contraseña",
                              icon: "lock.fill",
                              title: "Contraseña",
                              isSecureField: true)
                    
                    Spacer()
                    
                    NavigationLink(destination: Inicio()) {
                        Text("Iniciar sesión")
                            .font(TextStyles.body)
                            .frame(width: 320, height: 60)
                            .foregroundColor(Colors.lightGreen)
                            .roundedBorder(borderColor: Colors.mainGreen, backgroundColor: Colors.mainGreen)
                    }
                    
                    Spacer()
                }
            }
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    CustomButton(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, color: Colors.mainGreen)
                }
            }
        }
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}



