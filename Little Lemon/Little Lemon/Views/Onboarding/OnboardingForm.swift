//
//  onboardingForm.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 27/09/2023.
//

import SwiftUI

struct onboardingForm: View {
    
    var body: some View {
    NavigationStack(){
        ScrollView(.vertical){
            HStack(alignment: .top){
                VStack{
                    Header_section(enableBackButton: false)
                        .frame(maxHeight: 50,alignment: .top)
                        .padding(.bottom,-30)
                    Hero_section()
                        .frame(alignment: .top)
                    
                    ScrollView(.vertical,showsIndicators: false)
                    {
                        VStack(alignment: .listRowSeparatorLeading){
                            
                            
                        }.padding()
                            
                        NavigationLink(destination: Onboarding(), label:{ Text("Next")})
                        Spacer()
                        
                        Button(action: {
        
                        }, label: {Text("Register")})//button
                        .buttonStyle(YellowButton())
                    }//ScrollViewInside
                }//VStack
            }
        }//ScrollView

    }//NavigationView
    .navigationBarBackButtonHidden(true)
}//Body
}//Struct

struct onboardingForm_Previews: PreviewProvider {
    static var previews: some View {
        onboardingForm()
    }
}
