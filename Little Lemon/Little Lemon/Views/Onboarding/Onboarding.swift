//
//  Onboarding.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 19/09/2023.
//

let kFirstName : String = "key for First"
let kLastName : String = "key for last"
let kEmail : String = "key for email"
let kPhoneNumber: String = "key for phone number"
let kIsLoggedIn = "kIsLoggedIn"

import SwiftUI

struct Onboarding: View {
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var phoneNumber: String = ""
    @State var isLoggedIn = false
    
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
                                Text("First Name *")
                                    .font(.OnboardingText())
                                    .foregroundColor(.gray)
                                    .padding(.bottom,10)
                                
                                
                                TextField("First Name", text: $firstName)
                                
                                
                                Text("Last Name *")
                                    .font(.title3)
                                    .font(.OnboardingText())
                                    .foregroundColor(.gray)
                                
                                TextField("Last Name", text: $lastName)
                                
                                Text("Email *")
                                    .font(.title3)
                                    .font(.OnboardingText())
                                    .foregroundColor(.gray)
                                
                                TextField("Email", text: $email)
                                
                                Text("Phone Number")
                                    .font(.title3)
                                    .font(.OnboardingText())
                                    .foregroundColor(.gray)
                                
                                TextField("Phone Number", text: $phoneNumber)
                                
                            }.padding()
                                .textFieldStyle(InputField())
                            
                            Spacer()
                            
                            Button(action: {
                                if (firstName.isEmpty && lastName.isEmpty && email.isEmpty){
                                    //show error
                                    
                                } else{
                                    UserDefaults.standard.set(firstName, forKey: kFirstName)
                                    UserDefaults.standard.set(lastName, forKey: kLastName)
                                    UserDefaults.standard.set(email, forKey: kEmail)
                                    isLoggedIn = true
                                    UserDefaults.standard.set(phoneNumber, forKey: kPhoneNumber)
                                    UserDefaults.standard.set(isLoggedIn, forKey: kIsLoggedIn)
                                    print("button pressed")
                                }//else
                                
                            }, label: {Text("Register")})//button
                            .buttonStyle(YellowButton())
                        }//ScrollViewInside
                    }//VStack
                }
            }//ScrollView
            .navigationDestination(isPresented: $isLoggedIn){
                Home()
            }
        }//NavigationView
        .onAppear(){
            if ((UserDefaults.standard.bool(forKey: kIsLoggedIn) == true)){
                isLoggedIn = true
                print("onAppear")
            }else {
                isLoggedIn = false
                print("Else OnAppear")
            }
        }//onAppear
        .navigationBarBackButtonHidden(true)
    }//Body
}//Struct

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
