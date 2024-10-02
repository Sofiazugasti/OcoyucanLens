//
//  inputView.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 25/09/24.
//
import SwiftUI

struct InputView: View {
   @Binding var text: String
   let placeholder: String
   let icon: String
   let title: String
   var isSecureField = false
    
   
   var body: some View{
       
       VStack(spacing:5){
           Text(title)
               .frame(maxWidth: .infinity, alignment: .leading)
                  .offset(x: 55)
               .foregroundColor(Colors.mainGreen)
               .font(TextStyles.body)
           HStack{
               Image(systemName: icon)
                   .foregroundColor(Colors.mainGreen)
               
               if isSecureField{
                   SecureField(placeholder, text: $text)
                       .font(TextStyles.body)
                       .padding(.leading, 10)
                       .foregroundColor(Colors.mainGreen)
               }else{
                   TextField(placeholder, text: $text)
                       .font(TextStyles.body)
                       .padding(.leading, 10)
                       .foregroundColor(Colors.mainGreen)
               }
               
           }
           .padding(.horizontal, 50)
           .frame(width: 320, height: 60)
           .roundedBorder()
       }
   }
}


struct InputView_Previews: PreviewProvider {
    @State static var text = "" 
    
    static var previews: some View {
        InputView(
            text: $text,
            placeholder: "Introduce tu correo",
            icon: "envelope.fill",
            title: "Correo Electrónico"
        )
    }
}
