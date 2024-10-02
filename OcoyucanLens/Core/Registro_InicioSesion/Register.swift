//
//  Register.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 04/09/24.
//

import SwiftUI

struct Register: View {
    @State private var email: String = ""
    @State private var name: String = ""
    @State private var lastname: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack{
            ZStack{
                Colors.lightGreen
                    .ignoresSafeArea()
                VStack {
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
                    }
                    Spacer()
                    
                    VStack{
                        InputView(
                            text: $email,
                            placeholder: "Ingrese su e-mail",
                            icon: "envelope.fill",
                            title: "Correo electrónico")
                    
                        InputView(
                            text: $name,
                            placeholder: "Ingrese su nombre",
                            icon: "person.fill",
                            title: "Nombre")
                    
                        InputView(
                            text: $lastname,
                            placeholder: "Ingrese su apellido",
                            icon: "keyboard.fill",
                            title: "Apellido")
                    
                        InputView(
                            text: $password,
                            placeholder: "Crear su contraseña",
                            icon: "lock.fill",
                            title: "Contraseña")

                        InputView(
                            text: $confirmPassword,
                            placeholder: "Confirme su contraseña",
                            icon: "repeat",
                            title: "Confirmar contraseña")
                        
                    }
                    
                    Spacer()

                    HStack{
                        NavigationLink(destination: Inicio()){
                            Text("Registrarse")
                                .font(TextStyles.body)
                                .frame(width: 320, height: 60)
                                .foregroundColor(Colors.lightGreen)
                                .roundedBorder(borderColor: Colors.mainGreen, backgroundColor: Colors.mainGreen)
                        }
                    }
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
    
struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
    

