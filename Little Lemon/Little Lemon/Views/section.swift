//
//  SwiftUIView.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 24/09/2023.
//

import SwiftUI

struct section: View {
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading){
                
                Text("Little Lemon")
                    .font(.DisplayTitle())
                    .frame(alignment: .leading)
                    .padding(.bottom,-20)
                    .foregroundColor(.PrimaryColor2)
                HStack{
                    VStack(alignment: .leading){
                        
                        Text("Chicago")
                            .font(.SubTitle())
                            .frame(alignment: .leading)
                            .foregroundColor(.white)
                            .padding(.top,-20)
                            
                        
                        Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
                            .font(.LeadText())
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .foregroundColor(.white)
                            .padding(.top,-30)
                    }
                    
                    Image("Hero image")
                        .resizable()
                        .frame(maxWidth: 140 ,maxHeight: 140)
                        .scaledToFill()
                        .cornerRadius(16)
                        .padding(.top,20)
                    
                    
                }
            }
                .padding([.leading,.trailing],10)
                .padding(.bottom,20)
                //.frame(maxHeight: 250)
                .background(Color("PrimaryColor1"))
             //   .ignoresSafeArea()
            }
            
            
    }//body
}//struct
