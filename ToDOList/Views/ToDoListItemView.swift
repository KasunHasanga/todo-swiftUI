//
//  ToDoListItemView.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import SwiftUI

struct ToDoListItemView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    let item: ToDoListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(item.title)
                    .font(.body)
                
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            Button{
                viewModel.toggleIsDone(item: item)
            }label: {
                Image(
                    systemName: item.isDone ?
                      "checkmark.circle.fill" : "circle")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            }
            
        }
    }
}

#Preview {
    ToDoListItemView(item: ToDoListItem(id: "dddd",
                                        title: "String",
                                        dueDate: Date().timeIntervalSince1970,
                                        createdDate: Date().timeIntervalSince1970,
                                        isDone: true) )
}
