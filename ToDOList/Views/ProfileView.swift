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
                
                if let user = viewModel.user {
                    Image(systemName:"person.circle.fill" )
                        .resizable()
                        .aspectRatio(contentMode:  .fit)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(width: 125,height: 125)
                        .padding()
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("User Name")
                                .bold()
                            Text(user.name)
                        }
                        .padding()
                        
                        HStack{
                            Text("Email")
                                .bold()
                            Text(user.email)
                        }
                        .padding()
                        HStack{
                            Text("Member Since")
                                .bold()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                        }
                        .padding()
                        
                        
                    }
                    
                    Button("LogOut"){
                        viewModel.logOut()
                    }
                    .tint(.red)
                    .padding()
                    Spacer()
                    
                }else{
                    Text("Loading")
                }
            }.navigationTitle("Profile")
        }.onAppear {
            viewModel.fetchUser()
        }
    
    }
}

#Preview {
    ProfileView()
}
