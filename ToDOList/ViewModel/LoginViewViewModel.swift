//
//  LoginViewViewModel.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import Foundation


class LoginViewViewModel : ObservableObject {
    
    @Published var email = ""
    @Published var password = "" 
    @Published var errorMessage = "" 
    
    init(){
        
    }
    
    func login (){
        errorMessage = ""
        print("called")
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "please fill all the errors"
            return
        }
        
        //email@fff.com
        guard email.contains("@") && email.contains(".") else{
            errorMessage = "please enter valid email"
            return
        }
        
        
        print("called")
        
    }
    func validate (){
        
    }
    
}
