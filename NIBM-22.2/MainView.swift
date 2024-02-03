//
//  MainView.swift
//  NIBM-22.2
//
//  Created by Yasir Rifai on 2024-01-27.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        @StateObject var homeVM : HomeViewModel = HomeViewModel()
        
        
        ZStack {
            VStack{
                MyInputField(inputField: $homeVM.firstName, fieldName: "First name")
                MyInputField(inputField: $homeVM.lastName, fieldName: "Last name")
                
                Button(action: {
                    homeVM.validate()
                }, label: {
                    
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 200, height: 40)
                        .overlay{
                            Text("Sign up")
                                .foregroundStyle(.white)
                        }
                    
                })        }
            if homeVM.showError {
                Color.white.overlay{
                    Text(homeVM.error).foregroundColor(.red)
                }.frame(height: 400)
                    .onTapGesture {
                        homeVM.showError = false
                    }
               
            }
        }
        
    }
}

#Preview {
    MainView()
}
