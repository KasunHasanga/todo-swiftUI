//
//  ToDoListItemViewViewModel.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//
import Firebase
import FirebaseFirestore
import Foundation

/// ViewModel for Single to do list item  (Each tow in item list)
/// Primary Tab
class ToDoListItemViewViewModel: ObservableObject {
    
    init() {
        
    }
    func toggleIsDone(item: ToDoListItem){
        
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else{
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
        
    }
    
    
}
