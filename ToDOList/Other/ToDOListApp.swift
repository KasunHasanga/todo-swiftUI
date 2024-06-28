//
//  ToDOListApp.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import SwiftUI
import FirebaseCore

@main
struct ToDOListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
