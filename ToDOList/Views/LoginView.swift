//
//  LoginView.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subTitle: "Get Things Done", angle: 15,backgroundColor: .pink)
                //Login Form
                
                Form{
                    TextField("Email Address",text:$email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    SecureField("Password" ,text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                   
                    TDLButtton(title: "Log In", background: .blue){
                        ///attemp to log in
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
