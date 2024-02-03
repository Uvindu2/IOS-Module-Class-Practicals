//
//  HomeViewModel.swift
//  NIBM-22.2
//
//  Created by Yasir Rifai on 2024-01-27.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var firstName : String = ""
    @Published var lastName : String = ""
    
    @Published var showError : Bool = false
    @Published var error : String = ""
    
    func validate(){
        if firstName.isEmpty && lastName.isEmpty {
            showError = true
            error = "First name and lat name cannot be empty"
        }
        else {
            showError = false
        }
    }
}
