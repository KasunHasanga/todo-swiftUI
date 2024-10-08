//
//  LoginViewViewModel.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import FirebaseAuth
import Foundation


class LoginViewViewModel : ObservableObject {
    
    @Published var email = ""
    @Published var password = "" 
    @Published var errorMessage = "" 
    
    init(){
        
    }
    
    func login (){
        guard validate() else{
            return
        }
        
        //try to log in
        
        
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    private func validate () -> Bool {
        
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "please fill all the errors"
            return false
        }
        
        //email@fff.com
        guard email.contains("@") && email.contains(".") else{
            errorMessage = "please enter valid email"
            return false
        }
        
        return true
    }
    
}
