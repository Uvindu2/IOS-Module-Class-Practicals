//
//  HomeViewEnv.swift
//  NIBM-22.2
//
//  Created by Yasir Rifai on 2024-01-27.
//

import SwiftUI

struct FormView: View {
    
    //Binding one-way
    
    @State var fName :String = ""
    @State var lName :String = ""
    @State var email :String = ""
    @State var isRegistered : Bool = false
    
    
    var body: some View{
        VStack{
            if(!isRegistered){
                Text("Sign Up")
                    .font(.system(size: 20))
                    .bold()
                
                VStack(spacing:16){
                    UserRegField(inputField: $fName, fieldName: "First Name")
                    UserRegField(inputField: $lName,fieldName: "Last Name")
                    UserRegField(inputField: $email,fieldName: "Email")
                    
                    Button(action: {
                        if !fName.isEmpty && !lName.isEmpty{
                            isRegistered = true
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 14)
                            .frame(height: 50)
                            .overlay(Text("Registar").foregroundColor(.white).fontWeight(.bold).cornerRadius(60))
                    })
                    .padding()
                    
                }
                Spacer()
            }
            
            else{
                Text("Welcome Boys")
                    .fontWeight(.light)
                    .font(.system(size: 28))
                    .foregroundColor(Color.green)
                Text("First Name : \(fName)")
                    .foregroundColor(Color.purple)
                    .fixedSize().font(.title3)
                Text("Last Name  : \(lName)")
                    .foregroundColor(Color.purple)
                    .fixedSize().font(.title3)
                Text("Email  : \(email)")
                    .foregroundColor(Color.purple)
                    .fixedSize().font(.title3)
                Button(action: {isRegistered=false}, label: {
                    RoundedRectangle(cornerRadius: 14)
                        .frame(height: 50)
                        .overlay(Text("Back to Form").foregroundColor(.white).fontWeight(.bold).cornerRadius(60))
                    
                })
                .padding()
            }
            Spacer()
        }
    }
    
    struct UserRegField:View{
        @Binding var inputField : String
        var fieldName : String = ""
        var body:some View{
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 50)
                .cornerRadius(60)
                .padding()
                .foregroundColor(.gray.opacity(0.4))
                .overlay {
                    TextField(fieldName, text: $inputField)
                        .padding(.leading,40)
                }
            
            
            
            
            
        }
        
    }
}
#Preview {
    FormView()
}
