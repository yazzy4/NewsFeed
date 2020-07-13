//
//  Article.swift
//  NewsFeed
//
//  Created by Yaz Burrell on 7/13/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import Foundation

struct Article: Decodable {
    let headline: String
    let urlToImage: String?
    
   
    
    private enum CodingKeys: String, CodingKey {
        case headline = "title"
        case urlToImage
    }
}
