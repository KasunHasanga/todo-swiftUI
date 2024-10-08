//
//  LoginView.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    

    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subTitle: "Get Things Done", angle: 15,backgroundColor: .pink)
                
                
                
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Email Address",text:$viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                    
                    SecureField("Password" ,text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                   
                    TDLButtton(title: "Log In", background: .blue){
                        viewModel.login()
                    }
                
                }
                .offset(y:-50)

                //Create Account
                VStack{
                    Text("New Around Here?")
                    
                    NavigationLink("Create An Account",destination: RegisterView())
                }
                .padding(.bottom,50)
        
                Spacer()
                
            }
        }
    }
}

#Preview {
    LoginView()
}
