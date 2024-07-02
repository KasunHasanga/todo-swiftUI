//
//  NewItemViewViewModel.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import Foundation


class NewItemViewViewModel: ObservableObject {
    
    @Published var title : String = ""
    @Published var dueDate : Date = Date()
    @Published var showAlert : Bool = false
    
    init() {
        
    }
    
    func save () {
        
    }
    
    var canSave : Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        return true
    }
    
}
