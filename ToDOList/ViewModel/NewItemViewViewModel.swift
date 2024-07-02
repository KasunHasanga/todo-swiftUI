//
//  NewItemViewViewModel.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation


class NewItemViewViewModel: ObservableObject {
    
    @Published var title : String = ""
    @Published var dueDate : Date = Date()
    @Published var showAlert : Bool = false
    
    init() {
        
    }
    
    func save () {
        guard canSave else {
            return
        }
        
        //Get Current user Id
        
        guard let uID = Auth.auth().currentUser?.uid else{
            return
        }
        ///create Model
        let newId = UUID().uuidString
        let newItem = ToDoListItem(
            id: newId,
            title: title,
            dueDate: dueDate.timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,
            isDone: false)
        
        //save data
        let db = Firestore.firestore()
        db.collection("users")
            .document(uID)
            .collection("todos")
            .document(newId)
            .setData(newItem.asDictionary())
        
        
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
