
import SwiftUI



struct Header_section: View {
    var checkIsLoggedIn = UserDefaults.standard.bool(forKey: kIsLoggedIn)
    var enableBackButton: Bool
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    HStack(){
                    if (enableBackButton){
                        Button( action:
                                    {
                            self.presentationMode.wrappedValue.dismiss()
                        },
                                label: {
                            Image("Back Button")
                            .resizable()
                            .frame(width: 40,height: 40)
                            .foregroundColor(.HighlightColor2)
                        })
                        Spacer()
                    }
                    }.padding(.leading,10)
                    LittleLemonLogo()
                    HStack{
                        Spacer()
                        if checkIsLoggedIn {
                            NavigationLink(destination: UserProfile(), label: {Image("Profile-image-placeholder").resizable().frame(width: 50,height: 50)})
                                .padding(.trailing)
                                .clipShape(Circle())
                        }
                    }//HStack
                }//ZStack
            }//VStack
        }//Navigation
        .padding(.top,-8)
    }//body
}//struct

