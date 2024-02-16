//
//  LoginView.swift
//  NIBM-22.2
//
//  Created by NIBM-LAB04-PC02 on 2024-02-10.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginVM:LoginViewModel=LoginViewModel()
    var body: some View {
        ZStack {
            LinearGradient(colors:[Color("Green"),
                                   Color.green.opacity(1)],startPoint:.bottomTrailing,endPoint: .topLeading).ignoresSafeArea()
            VStack{
                Text("Logo").bold().font(.system(size: 32)).foregroundStyle(.white)
                Spacer()
                RoundedRectangle(cornerRadius: 14).foregroundColor(.white).frame(height: 400).padding(30)
                    .overlay{
                        VStack(spacing:0){
                            RoundedRectangle(cornerRadius: 1)
                                .stroke(lineWidth:1)
                                .frame(height: 50).padding(.horizontal,48)
                                .overlay{
                                    HStack{
                                        Image(systemName: "person.fill")
                                            .foregroundColor(.gray)
                                        TextField("Username",text:  $loginVM.username)
                                        
                                    }.padding(.horizontal,56)
                                    
                                }
                            RoundedRectangle(cornerRadius: 1)
                                .stroke(lineWidth:1)
                                .frame(height: 50).padding(.horizontal,48)
                                .overlay{
                                    HStack{
                                        Image(systemName: "lock")
                                            .foregroundColor(.gray)
                                        TextField("Password",text: $loginVM.password)
                                        
                                    }.padding(.horizontal,56)
                                    
                                }
                            Button(action: {loginVM.verifyLogin()}, label: {
                                
                                RoundedRectangle(cornerRadius: 12)
                                    .frame(width: 300, height: 50)
                                    .foregroundColor(.green.opacity(1))
                                    .overlay{
                                        Text("Login")
                                            .foregroundStyle(.white)
                                    }
                                    .offset(y: 15)
                                
                                
                            })
                            
                        }
                        
                        
                        
                    }
                if loginVM.showError{
                    RoundedRectangle(cornerRadius: 10)
                        .lineLimit(3).bold()
                        .frame(height: 100)
                        .foregroundStyle(.white .opacity(1))
                        .shadow(radius: 10)
                        .overlay{
                            Text(loginVM.errorMessage)
                                .foregroundStyle(.red)
                                .padding(48)
                        }
                }
                Spacer()
                
                
                
            }
            NavigationLink("",isActive: $loginVM.success){
                Text("Hello User")
            }
        }
        Spacer()
        
    }
}
#Preview {
    LoginView()
}
