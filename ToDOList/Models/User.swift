//
//  User.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-06-28.
//

import Foundation


struct User:Codable {
    let id :String
    let name :String
    let email :String
    let joined :TimeInterval
}
