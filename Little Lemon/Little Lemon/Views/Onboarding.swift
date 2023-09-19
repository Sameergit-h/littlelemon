//
//  Onboarding.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 19/09/2023.
//

let kFirstName : String = "key for First"
let kLastName : String = "key for last"
let kEmail : String = "key for email"
let kIsLoggedIn = "kIsLoggedIn"

import SwiftUI

struct Onboarding: View {
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var isLoggedIn = false
    
    var body: some View {
        
            NavigationView(){
                VStack{
                    //LittleLemonLogo()
                    Header_section()
                        .frame(maxHeight: 50,alignment: .top)
                    Hero_section()
                    .frame(alignment: .topLeading)
                    .padding(.bottom,10)
                    VStack(alignment: .center){
                        
                        NavigationLink(destination: Home(),isActive: $isLoggedIn){
                            EmptyView()
                        }
                        ScrollView(.vertical,showsIndicators: false)
                        {
                            VStack(alignment: .listRowSeparatorLeading){
                                Text("First Name *")
                                    .font(.title3)
                                TextField("First Name", text: $firstName)
                                Text("Last Name *")
                                    .font(.title3)
                                TextField("Last Name", text: $lastName)
                                Text("Email *")
                                    .font(.title3)
                                TextField("Email", text: $email)
                            }.padding()
                                .textFieldStyle(.roundedBorder)
                            
                            Spacer()
                            Button(action: {
                                if (firstName.isEmpty && lastName.isEmpty && email.isEmpty){
                                    //show error
                                    
                                } else{
                                    UserDefaults.standard.set(firstName, forKey: kFirstName)
                                    UserDefaults.standard.set(lastName, forKey: kLastName)
                                    UserDefaults.standard.set(email, forKey: kEmail)
                                    isLoggedIn = true
                                    UserDefaults.standard.set(isLoggedIn, forKey: kIsLoggedIn)
                                }//else
                                
                            }, label: {Text("Register")})//button
                            .padding(20)
                            
                        }//VStack
                    }//ScrollView
                }
            }//NavigationView
            .onAppear(){
                if ((UserDefaults.standard.bool(forKey: kIsLoggedIn) == true)){
                    isLoggedIn = true
                }
            }
        
    }//Body
}//Struct

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
