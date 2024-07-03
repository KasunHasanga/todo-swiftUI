//
//  TodoListViewViewModel.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//
import FirebaseFirestore
import Foundation

/// ViewModel for list of Items View
/// Primary Tab
class ToDoListViewModel: ObservableObject {
    
    @Published var showingMewItemView = false
    
    private let userId : String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete to List Item
    /// - Parameter id: <#id description#>
    func deleteItem(id:String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
        
        
    }
    
    
    
}
