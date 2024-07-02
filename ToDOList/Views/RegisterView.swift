//
//  RegisterView.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import SwiftUI

struct RegisterView: View {
 
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "Register", subTitle: "Start organizing todos", angle: -15,backgroundColor: .orange)
                
                
                Form {
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("User Name",text:$viewModel.userName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    TextField("Email Address",text:$viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    SecureField("Password" ,text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                    
                    
                    TDLButtton(title: "Register", background: .green){
                        viewModel.register()
                    }
                   
                }
                .offset(y:-50)
                Spacer()
                
            }
        }
    }
}

#Preview {
    RegisterView()
}
