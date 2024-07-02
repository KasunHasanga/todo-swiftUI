//
//  extention.swift
//  ToDOList
//
//  Created by kasun Hasanga on 2024-07-02.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String : Any] {
        guard let data = try? JSONEncoder().encode(self) else{
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String:Any]
            return json ?? [:]
        }catch{
            return [:]
        }
    }
}
