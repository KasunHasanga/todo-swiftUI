//
//  TDLButtton.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import SwiftUI

struct TDLButtton: View {
    let title:String
    let background :Color
    let action: () ->Void
    var body: some View {
        Button{
            action()
        }label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TDLButtton(title: "Log In", background: Color.blue){
        
    }
}
