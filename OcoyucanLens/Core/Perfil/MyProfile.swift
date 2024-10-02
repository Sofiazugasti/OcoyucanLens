//
//  MyPorfile.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 26/09/24.
//

import SwiftUI

struct MyProfile: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack {
            ZStack {
                Color(Colors.mainGreen)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Mi perfil")
                        .font(TextStyles.title)
                        .foregroundColor(Colors.lightGreen)
                    HStack {
                        Text("SZ")
                            .font(TextStyles.title)
                            .frame(width: 50, height: 50)
                            .foregroundColor(Colors.lightGreen)
                            .background(Color(Colors.mainGreen))
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 1) {
                            Text("Sofía Zugasti")
                                .font(TextStyles.title)
                                .foregroundColor(Colors.mainGreen)
                            Text("sofiazugasti@gmail.com")
                                .font(TextStyles.body)
                                .accentColor(Colors.mainGreen)
                        }
                    }
                    .frame(width: 350, height: 85)
                    .roundedBorder()
                    
                    Spacer()
                    
                    HStack {
                        SettingsRowView(imageName: "person.fill", title: "Sofía", description: "Nombre")
                    }
                    HStack {
                        SettingsRowView(imageName: "keyboard.fill", title: "Zugasti", description: "Apellido")
                    }
                    HStack {
                        SettingsRowView(imageName: "envelope.fill", title: "sofiazug04@gmail.com", description: "Correo electrónico")
                    }
                    HStack {
                        SettingsRowView(imageName: "star.circle.fill", title: "250", description: "Puntos totales")
                    }
                    HStack {
                        SettingsRowView(imageName: "trophy.fill", title: "25", description: "Flora recolectada")
                    }
                    NavigationLink(destination: Inicio()) {
                        Text("Cerrar sesión")
                            .font(TextStyles.body)
                            .frame(width: 240, height: 45)
                            .foregroundColor(Colors.lightGreen)
                            .roundedBorder(borderColor: Colors.lightGreen, backgroundColor: Colors.mainGreen)
                            .padding(.vertical, 6)
                        
                    }
                    NavigationLink(destination: Inicio()) {
                        Text("Editar perfil")
                            .font(TextStyles.body)
                            .frame(width: 240, height: 45)
                            .foregroundColor(Colors.lightGreen)
                            .roundedBorder(borderColor: Colors.lightGreen, backgroundColor: Colors.mainGreen)
                         
                    }
                    
                    .navigationBarBackButtonHidden(true)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            CustomButton(action: {
                                presentationMode.wrappedValue.dismiss()
                            }, color:Colors.lightGreen )
                            
                        }
                    }
                }
            }
        }
    }
}

struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}

