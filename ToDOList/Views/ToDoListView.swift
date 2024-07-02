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
                        //Action
                    }label: {
                        Image(systemName:"plus")
                    }
                }
        }
    }
}

#Preview {
    ToDoListView(userId: "100")
}
