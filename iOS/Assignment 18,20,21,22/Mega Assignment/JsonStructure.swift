//
//  JsonParser.swift
//  Mega Assignment
//
//  Created by Anindya Guha on 08/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import Foundation

struct JSONData: Decodable {
    let format: String
    let width : Int
    let  height : Int
    let filename: String
    let id: Int
    let author: String
    let author_url : String
    let post_url :String
    
}
