//
//  ToDoListView.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel : ToDoListViewModel
    @FirestoreQuery var items : [ToDoListItem]
    
    init(userId:String) {
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos"
        )
        
        self._viewModel = StateObject(
            wrappedValue: ToDoListViewModel(userId:userId)
        )
    }
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                List(items){
                    item in
                    ToDoListItemView(item: item)
                        .swipeActions{
                            Button{
                                viewModel.deleteItem(id:item.id)
                            }label: {
                                Text("Delete")
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
          
            }.navigationTitle("To Do List")
                .toolbar{
                    Button{
                        viewModel.showingMewItemView = true
                    }label: {
                        Image(systemName:"plus")
                    }
                }
                .sheet(isPresented: $viewModel.showingMewItemView, content: {
                    NewItemView(newItemPresented: $viewModel.showingMewItemView)
                })
        }
    }
}

#Preview {
    ToDoListView(userId: "HTnI3TSwGuMa0xrWLHhdbREi9zj1")
}
