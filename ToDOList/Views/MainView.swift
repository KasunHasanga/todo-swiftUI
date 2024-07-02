//
//  MainView.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        
        if viewModel.isSignedIn, !viewModel.curruntUserId.isEmpty{
            ToDoListView()
        } else {
            LoginView()
        }
//        VStack {
//            NavigationView{
//                LoginView()
//            }
//        }
//        .padding()
    }
}

#Preview {
    MainView()
}
