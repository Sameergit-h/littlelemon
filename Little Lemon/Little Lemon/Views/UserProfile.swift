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
    
    var body: some View {
        VStack(alignment: .leading){
            Image(systemName: "arrow.backward.circle.fill")
                .resizable()
                .frame(width: 50,height: 50)
            Text("Personal Information")
                .font(.title)
            Text("Avatar")
                .font(.headline)
            
            HStack{
                Image("Profile-image-placeholder")
                    .resizable().frame(width: 50,height: 50,alignment: .leading)
                Button(action: {}, label:{ Text("Change")})
                Button(action: {}, label:{ Text("Remove")})
            }.padding(30)
            
            Text(userFirstName ?? "")
            //TextField("First name", text: userFirstName)
            Text(userLastName ?? "")
            Text(userEmail ?? "")
            
            
            //Email notifications
            
            Text("Email Notifications")
            /*
            Toggle(isOn: $orderStatus) { Text("Order statuses") }
            .toggleStyle(ChecboxButton())
            
            Toggle(isOn: $passwordChange) { Text("Password changes")}
            .toggleStyle(ChecboxButton())
            
            Toggle(isOn: $specialOffer) { Text("Special offers") }
            .toggleStyle(ChecboxButton())
            
            Toggle(isOn: $newsletter) { Text("$Newsletter") }
            .toggleStyle(ChecboxButton())
            */
            //Logout and changes save button
            
          Button (action:
                {
                UserDefaults.standard.set(false, forKey: kIsLoggedIn)
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

        }
    }
    
    
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
