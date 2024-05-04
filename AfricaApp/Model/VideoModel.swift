//
//  VideoModel.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 19/04/24.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //propriedade computada
    var thumbnail: String {
        "video-\(id)"
    }
}
