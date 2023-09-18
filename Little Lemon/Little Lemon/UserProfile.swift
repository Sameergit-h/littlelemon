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
    
    var body: some View {
        VStack{
            Text("Personal Information")
            Image("Profile-image-placeholder")
            
            Text(userFirstName ?? "")
            Text(userLastName ?? "")
            Text(userEmail ?? "")
            
            Button (action:
                {
                UserDefaults.standard.set(false, forKey: kIsLoggedIn)
                self.presentation.wrappedValue.dismiss()
            }
             ,label: {
                Text("Logout")
            })
            Spacer()

        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
