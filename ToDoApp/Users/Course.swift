//
//  Course.swift
//  ToDoApp
//
//  Created by snapmac on 2/18/18.
//  Copyright © 2018 snapmac. All rights reserved.
//

import Foundation

struct Course {
    
    let id: Int
    let name: String
    let link: String
    let imageUrl: String
    
    init(json: [String: Any]) {
        id = json["id"] as? Int ?? -1
        name = json["name"] as? String ?? "no_name"
        link = json["link"] as? String ?? "no-link"
        imageUrl = json["imageUrl"] as? String ?? "no-image"
    }
    
    
}
