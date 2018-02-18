//
//  User.swift
//  ToDoApp
//
//  Created by snapmac on 2/18/18.
//  Copyright © 2018 snapmac. All rights reserved.
//

import Foundation
struct User {
    let id: String?
    let name: String?
  
    init(json: [String: Any]){
        id = json["id"] as? String ?? -1
        name = json["name"] as? String ?? "No Name"
    }
}
