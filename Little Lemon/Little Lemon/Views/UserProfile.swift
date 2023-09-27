//
//  UserProfile.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 19/09/2023.
//

import SwiftUI

struct UserProfile: View {
    
    @Environment(\.presentationMode) var presentation
    @Environment(\.editMode) private var editMode
    
    let userFirstName : String? = UserDefaults.standard.string(forKey: kFirstName)
    let userLastName : String? = UserDefaults.standard.string(forKey: kLastName)
    let userEmail : String? = UserDefaults.standard.string(forKey: kEmail)
    let userPhoneNumber : String? = UserDefaults.standard.string(forKey: kPhoneNumber)
    
    @State private var disableTextField = true
    @State var orderStatus = false
    @State var passwordChange = false
    @State var specialOffer = false
    @State var newsletter = false
    @State var userIsLoggedOut = false
    
    @State var userName = "John"
    @State var userName1 = "Doe"
    @State var userName2 = "JohnDoe@gmail.com"
    @State var userName3 = "(217) 555-0113)"
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            NavigationStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 380, height: 710)
                        .foregroundColor(.white)
                    
                    VStack(alignment: .leading){
                        
                        VStack(alignment: .leading){
                            Text("Personal information")
                                .font(.SectionTitle())
                                .padding(.bottom,10)
                                .padding(.leading,10)
                            
                            Text("Avatar")
                                .font(.headline)
                                .foregroundColor(.HighlightColor2)
                                .padding(.leading,10)
                            
                            //Profile and buttons
                            HStack{
                                Image("Profile-image-placeholder")
                                    .resizable().frame(width: 90,height: 90,alignment: .leading)
                                    .padding(.leading,10)
                                    .clipShape(Circle())
                                
                                Button(action: {}, label:{ Text("Change")})
                                    .buttonStyle(ChangeButton())
                                
                                Button(action: {}, label:{ Text("Remove")})
                                    .buttonStyle(RemoveButton())
                            }
                        }.padding(10)
                        
                        //Details
                        VStack(alignment: .leading){
                            Text("First name")
                            .foregroundColor(.HighlightColor2)
                            TextField("",text: $userName)
                                .textFieldStyle(InputField())
                                .disabled(disableTextField)
                            
                            
                            
                            
                            //TextField("First name", text: userFirstName)
                            
                            Text("Last name")
                                .padding(.top,20)
                                .foregroundColor(.HighlightColor2)
                            //Text(userLastName ?? "")
                            TextField("",text: $userName1)
                                .textFieldStyle(InputField())
                                .disabled(disableTextField)
                            
                            
                            
                            Text("Email")
                                .padding(.top,20)
                                .foregroundColor(.HighlightColor2)
                            TextField("",text: $userName2)
                                .textFieldStyle(InputField())
                                .disabled(disableTextField)
                            
                            //Text(userEmail ?? "")
                            
                            Text("Phone number")
                                .padding(.top,20)
                                .foregroundColor(.HighlightColor2)
                            //Text(userLastName ?? "")
                            TextField("",text: $userName3)
                                .textFieldStyle(InputField())
                                .disabled(disableTextField)
                            
                            
                        }.padding([.leading,.trailing],20)
                        
                        //Email notifications
                        
                        VStack(alignment: .leading){
                            Text("Email notifications")
                                .font(.CardTitle())
                                .padding([.top,.bottom],10)
                            
                            Toggle(isOn: $orderStatus) { Text("Order statuses") }
                                .toggleStyle(ChecboxButton())
                            
                            Toggle(isOn: $passwordChange) { Text("Password changes")}
                                .toggleStyle(ChecboxButton())
                            
                            Toggle(isOn: $specialOffer) { Text("Special offers") }
                                .toggleStyle(ChecboxButton())
                            
                            Toggle(isOn: $newsletter) { Text("Newsletter") }
                                .toggleStyle(ChecboxButton())
                        }
                        //.foregroundColor(.black)
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
                                Text("Log out")
                                    .bold()
                            })
                            .buttonStyle(YellowButton())
                            .padding(.bottom,10)
                            
                            HStack(alignment: .center){
                                Button(action: {}, label:{ Text("Discard changes")})
                                    .buttonStyle(DiscardChangesButton())
                                
                                Button(action: {}, label:{ Text("Save changes")})
                                    .buttonStyle(SaveChangesButton())
                            }
                        }//logout VStack
                    }//page VStack
                }//ZStack
                .padding(20)
                .navigationDestination(isPresented: $userIsLoggedOut){
                    Onboarding()
                }
            }//NavigationStack
        }//Scrollview
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar(){
            ToolbarItem(placement: .navigationBarLeading){
                Button (action: { self.presentation.wrappedValue.dismiss()},
                         label: { Image("Back Button") })
                .buttonStyle(BackButton())}
            
            ToolbarItem(placement: .principal){
                VStack{ Image("LittleLemonLogo")}}
            
            ToolbarItem(placement: .navigationBarTrailing){
                Image("Profile-image-placeholder").resizable().frame(width: 50,height: 50)
                    .clipShape(Circle())}
        }//Toolbar
    }//body
}//Struct

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}

