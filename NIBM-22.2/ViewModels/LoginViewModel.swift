//
//  LoginViewModel.swift
//  NIBM-22.2
//
//  Created by NIBM-LAB04-PC02 on 2024-02-10.
//

import Foundation
import SwiftUI

class LoginViewModel:ObservableObject{
    
    @Published var username:String=""
    @Published var password:String=""
    @Published var showError:Bool=false
    @Published var errorMessage:String=""
    @Published var success:Bool=false
    func verifyLogin(){
        if(username.isEmpty || password.isEmpty){
            showError=true;
            errorMessage="User name and password cannot be empty"
        }
        else if(username.lowercased()=="abc" && password=="123"){
            showError=false;
            success=true
        }
        else{
            showError=true;
            errorMessage="User name and password mismatched. Please try agaain!!!"
        }
        
    }
}
