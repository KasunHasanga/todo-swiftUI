//
//  RegisterView.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import SwiftUI

struct RegisterView: View {
    @State var email = ""
    @State var password = ""
    @State var userName = ""
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "Register", subTitle: "Start organizing todos", angle: -15,backgroundColor: .orange)
                
                
                Form {
                    TextField("User Name",text:$userName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Email Address",text:$email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    SecureField("Password" ,text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    TDLButtton(title: "Register", background: .green){
                        
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
