//
//  NetworkManager.swift
//  JSON_Work
//
//  Created by nurake on 28.11.2021.
//

import Foundation

let link = "https://dog.ceo/api/breeds/image/random"

struct Dogs: Decodable {
    let message: String?
    let status: String
}
