//
//  Listas.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 05/09/24.
//

import SwiftUI

struct Listas: View {
    let plantName: String
    let plantPoints: String
    let plantImage: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 175, height: 275)
                .foregroundStyle(Color(Colors.lightGreen))
                .shadow(radius: 5)
                .overlay(
                    VStack { 
                        Text(plantName)
                            .font(TextStyles.title)
                            .foregroundStyle(Color(Colors.mainGreen))
                        
                        HStack  {
                            Text(plantPoints)
                                .foregroundStyle(Color(Colors.mainGreen))
                                .font(TextStyles.body)
                            
                            Image(systemName: "star.circle.fill")
                                .foregroundStyle(Color(Colors.mainGreen))
                        }
                        
                        ImageView(imageName: plantImage, width: 140, height: 140)
                        
                        NavigationLink(destination: VerDetalles()) {
                            Text("Ver detalles")
                                .font(TextStyles.body)
                                .frame(width: 130, height: 30)
                                .foregroundColor(Colors.lightGreen)
                                .roundedBorder(borderColor: Colors.mainGreen, backgroundColor: Colors.mainGreen)
                        }
                    }
                )
        }
    }
}

struct Listas_Previews: PreviewProvider {
    static var previews: some View {
        Listas(plantName: "Rosa", plantPoints: "25", plantImage: "img1")
    }
}


