

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("normalPhoto")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 220)
                    .ignoresSafeArea()
                    .overlay{
                        Image("profile3")
                            .resizable()
                            .scaledToFill()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: 100, height: 100)
                            .offset(y: 170)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    }
                VStack{
                    
                    Text("Uvindu Perera").bold()
                        .offset(y: 160)
                    Text("uvinduperera97@gmail.com")
                        .offset(y: 160)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width: 200, height: 40)
                            .foregroundColor(.black.opacity(0.8))
                            .overlay{
                                Text("Edit profile")
                                    .foregroundStyle(.white)
                            }
                            .offset(y: 60)
                        
                        
                    })
                    
                    
                    
                }
                
                HStack {
                    VStack{
                        Text("Weight")
                        Text("85 KG").font(.system(size: 30))
                        
                    }
                    Spacer()
                    
                    VStack{
                        Text("Height")
                        Text("178 CM").font(.system(size: 30))
                        
                    }
                    Spacer()
                    VStack{
                        Text("Blood Group")
                        Text("O+").font(.system(size: 30))
                        
                    }
                }.padding(.horizontal, 30)
                    .padding(.top, 30)
                    .offset(y: 100)
                Spacer()
            }
        }
    }
}

#Preview {
    ProfileView()
}
