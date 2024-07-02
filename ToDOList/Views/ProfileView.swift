//
//  ProfileView.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    init() {}
    
    var body: some View {
        NavigationView{
            
            VStack{
                
            }.navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
