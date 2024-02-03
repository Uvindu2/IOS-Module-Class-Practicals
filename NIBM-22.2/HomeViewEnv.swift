//
//  HomeViewEnv.swift
//  NIBM-22.2
//
//  Created by Yasir Rifai on 2024-01-27.
//

import SwiftUI

struct HomeViewEnv: View {
//    @State var isChange : Bool = false
    
//    var body: some View {
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//            .frame(height: isChange ? 400 : 200)
//            .padding(48)
//            .background(content: {
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .frame(height: 240)
//                    .padding()
//                    .foregroundColor(isChange ? .yellow : .orange)
//            })
//            .foregroundColor( isChange ? .blue : .green)
//            .overlay(content: {
//                Image(systemName: "person.circle.fill")
//                    .resizable()
//                    .frame(width: 40, height: 40)
//                    .foregroundColor(.red)
//            })
//            .rotation3DEffect(
//                .degrees(isChange ? 180 : 0),
//                                      axis: (x: 0.0, y: 1.0, z: 0.0)
//            )
//            .onTapGesture {
//                withAnimation {
//                    isChange.toggle()
//                }
//            }
//    }
    
    //Binding one-way
    
    @State var fName :String = ""
    @State var lName :String = ""
    @State var email :String = ""
    @State var isRegistered : Bool = false
    
    
    var body: some View{
        VStack {
//            Text(userName)
//                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                .padding()
            if !isRegistered {
                Text("Sign Up")
                    .font(.system(size: 20))
                    .bold()
                
                VStack(spacing:16){
                    MyInputField(inputField: $fName, fieldName: "First Name")
                    MyInputField(inputField: $lName, fieldName: "Last Name")
                    MyInputField(inputField: $email ,fieldName: "Email")
                    Button(action: {
                        if !fName.isEmpty && !lName.isEmpty{
                            isRegistered = true
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 14)
                            .frame(height: 50)
                 
                            .overlay{
                                Text("Register")
                                    .foregroundColor(.white)
                            }
                    })
                    
                }
            }
            else{
                Text("Welcome")
                    .font(.system(size: 30))
                    .bold()
                
                Text("First Name \(fName)")
                Text("Last Name  \(lName)")
                Text("Email \(email)")
                
                Button(action: {
                    isRegistered = false
                }, label: {
                    RoundedRectangle(cornerRadius: 14)
                        .frame(height: 50)
                        .overlay{
                            Text("Back to Registration")
                                .foregroundColor(.white)
                        }
                })
                
            }
            Spacer()
           
        }
    }
}

struct MyInputField : View {
    
    @Binding var inputField : String
    var fieldName : String = ""
    var body: some View{
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 50)
            .padding()
            .foregroundColor(.gray.opacity(0.4))
            .overlay{
                TextField(fieldName, text: $inputField)
                    .padding(.leading, 40)
            }
    }
}

#Preview {
    HomeViewEnv()
}
