
import SwiftUI

struct Hero_section: View {
    var body: some View {
        VStack{

            VStack(alignment: .leading){
                
                Text("Little Lemon")
                    .font(.custom("AppTitle", size: 48))
                    .frame(alignment: .leading)
                    .foregroundColor(.yellow)
                HStack{
                    VStack(alignment: .leading){
                        
                        Text("Chicago")
                            .font(.subheadline)
                            .frame(alignment: .leading)
                            .foregroundColor(.white)
                        
                        Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
                            .font(.subheadline)
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .foregroundColor(.white)
                    }
                    
                    Image("Hero image")
                        .resizable()
                        .frame(maxWidth: 150 ,maxHeight: 150)
                        .scaledToFill()
                        .cornerRadius(16)
                    
                    
                }
            }
                .padding([.leading,.trailing],20)
                //.padding([.top,.bottom],10)
                .frame(maxHeight: 250)
                .background(Color.gray)
            }
            
            
    }//body
}//struct

struct Hero_section_Previews: PreviewProvider {
    static var previews: some View {
        Hero_section()
    }
}
