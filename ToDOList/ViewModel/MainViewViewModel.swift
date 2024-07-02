//
//  MainViewViewModel.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject {
    @Published var curruntUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    
    init(){
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _ ,user in
            DispatchQueue.main.async {
                self?.curruntUserId = user?.uid ?? ""
            }
           
        }
    }
    
    public var isSignedIn : Bool {
        return Auth.auth().currentUser != nil
    }
    
    
    
    
    
}
