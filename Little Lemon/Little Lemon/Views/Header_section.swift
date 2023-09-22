
import SwiftUI



struct Header_section: View {
    var checkIsLoggedIn = UserDefaults.standard.bool(forKey: kIsLoggedIn)
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    LittleLemonLogo()
                    HStack{
                        Spacer()
                        if checkIsLoggedIn {
                            NavigationLink(destination: UserProfile(), label: {Image("Profile-image-placeholder").resizable().frame(width: 50,height: 50)})
                                .padding(.trailing)
                                .clipShape(Circle())
                        }
                    }
                }
            }//VStack

        }//Navigation
        //.frame(maxHeight: 60)
        //.ignoresSafeArea()
    }//body
}//struct

struct Header_section_Previews: PreviewProvider {
    static var previews: some View {
        Header_section()
    }
}
