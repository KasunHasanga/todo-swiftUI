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
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView : some View {
        TabView{
            ToDoListView(userId :viewModel.curruntUserId)
                .tabItem {
                    Label("Home",systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile",systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
