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
    
    init() {
        
    }
    
    func save () {
        
    }
    
}
