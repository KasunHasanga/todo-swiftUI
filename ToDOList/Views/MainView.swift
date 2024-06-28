//
//  MainView.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            NavigationView{
                LoginView()
            }
        }
        .padding()
    }
}

#Preview {
    MainView()
}
