//
//  ToDoListView.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewModel()
    
    
    private let userId:String
    init(userId:String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView{
            
            VStack{
          
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
    ToDoListView(userId: "100")
}
