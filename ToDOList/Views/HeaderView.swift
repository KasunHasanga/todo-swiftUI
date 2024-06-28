//
//  HeaderView.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle: String
    let angle : Double
    let backgroundColor : Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: 15))
               
            
            VStack{
                Text(title)
                    .font(.system(size:50))
                    .foregroundColor(.white)
                    .bold()
                Text(subTitle)
                    .font(.system(size:30))
                    .foregroundColor(.white)
            }
            .padding(.top,30)
        }
        .frame(width: UIScreen.main.bounds.width*3 ,height: 350)
        .offset(y:-150)
    }
}

#Preview {
    HeaderView(title: "String",
               subTitle: "String",
               angle: 15, backgroundColor: Color.red)
}
