//
//  UserProfile.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 19/09/2023.
//

import SwiftUI

struct UserProfile: View {
    
    @Environment(\.presentationMode) var presentation
    let userFirstName : String? = UserDefaults.standard.string(forKey: kFirstName)
    let userLastName : String? = UserDefaults.standard.string(forKey: kLastName)
    let userEmail : String? = UserDefaults.standard.string(forKey: kEmail)
    @State var orderStatus = false
    @State var passwordChange = false
    @State var specialOffer = false
    @State var newsletter = false
    @State var userIsLoggedOut = false
    
    var body: some View {
        //ScrollView(.vertical){
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .frame(width: 380, height: 710)
                .foregroundColor(.cyan)
                
                
            VStack(){
                
                VStack(alignment: .leading){
                    
                    //Image(systemName: "arrow.backward.circle.fill")
                    //  .resizable()
                    //.frame(width: 50,height: 50)
                    
                    VStack(alignment: .leading){
                        Text("Personal Information")
                            .font(.title)
                        //.padding([.top,.bottom],10)
                            .padding(.bottom,10)
                        Text("Avatar")
                            .font(.headline)
                        
                        //Profile and buttons
                        HStack{
                            Image("Profile-image-placeholder")
                                .resizable().frame(width: 50,height: 50,alignment: .leading)
                                .clipShape(Circle())
                            Button(action: {}, label:{ Text("Change")})
                            Button(action: {}, label:{ Text("Remove")})
                        }
                    }.padding(10)
                    
                    //Details
                    VStack(alignment: .listRowSeparatorLeading){
                        Text(userFirstName ?? "")
                        //TextField("First name", text: userFirstName)
                        Text(userLastName ?? "")
                        Text(userEmail ?? "")
                    }.padding(20)
                    
                    //Email notifications
                    
                    VStack(alignment: .leading){
                        Text("Email Notifications")
                            .font(.headline)
                            .padding([.top,.bottom],10)
                        
                        Toggle(isOn: $orderStatus) { Text("Order statuses") }
                            .toggleStyle(.button)
                        
                        Toggle(isOn: $passwordChange) { Text("Password changes")}
                            .toggleStyle(.button)
                        
                        Toggle(isOn: $specialOffer) { Text("Special offers") }
                            .toggleStyle(.button)
                        
                        Toggle(isOn: $newsletter) { Text("$Newsletter") }
                            .toggleStyle(.button)
                    }.foregroundColor(.black)
                        .padding(20)
                    
                    //Logout and changes save button
                    VStack{
                        Button (action:
                                    {
                            UserDefaults.standard.set(false, forKey: kIsLoggedIn)
                            userIsLoggedOut = true
                            self.presentation.wrappedValue.dismiss()
                        
                        }
                                ,label: {
                            Text("Logout")
                        })
                        .frame(width: 360,height: 50,alignment: .center)
                        .background(Color.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(8)
                        .padding()
                        
                        NavigationLink(destination: Onboarding(), isActive: $userIsLoggedOut){
                            //EmptyView()
                        }
                        
                        
                        HStack(alignment: .center){
                            Button(action: {}, label:{ Text("Discard changes")})
                                .frame(width: 100,height: 50 ,alignment: .center)
                                .foregroundColor(.gray)
                                .buttonBorderShape(.roundedRectangle(radius: 8))
                                .cornerRadius(8)
                                .padding()
                            
                            Button(action: {}, label:{ Text("Save changes")})
                                .frame(width: 100,height: 50 ,alignment: .center)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .buttonBorderShape(.roundedRectangle(radius: 8))
                                .cornerRadius(8)
                                .padding()
                        }
                    }//logout VStack
                }//page VStack
            }
                //.frame(width: 370, height: 710)
                //.background(Color.cyan)
                .padding(20)
                
                
                //.padding(.top, -40)
            }
        
        .navigationBarTitleDisplayMode(.inline)
        
         .toolbar(){
            ToolbarItem(placement: .principal){
                Image("LittleLemonLogo")
                    
            }
            ToolbarItem(placement: .navigationBarTrailing){
                Image("Profile-image-placeholder").resizable().frame(width: 50,height: 50)
                    //.padding(.trailing)
                    .clipShape(Circle())
            }
        }
          
          //}//ScrollView
    }//body
}//Struct

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}

