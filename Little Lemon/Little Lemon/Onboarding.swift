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
                NavigationLink(destination: Home(),isActive: $isLoggedIn){
                    EmptyView()
                }
                
                Text("Little Lemon Restaurant")
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
                TextField("Email", text: $email)
                
                Button(action: {
                    if (firstName.isEmpty && lastName.isEmpty && email.isEmpty){
                        
                        
                    } else{
                        UserDefaults.standard.set(firstName, forKey: kFirstName)
                        UserDefaults.standard.set(lastName, forKey: kLastName)
                        UserDefaults.standard.set(email, forKey: kEmail)
                        isLoggedIn = true
                        UserDefaults.standard.set(isLoggedIn, forKey: kIsLoggedIn)
                    }

                }, label: {Text("Register")})
            
                
            }
        }.onAppear(){
            if ((UserDefaults.standard.string(forKey: kIsLoggedIn) != nil) == true){
                isLoggedIn = true
            }
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
