//
//  TopHeadlinesResponse.swift
//  NewsFeed
//
//  Created by Yaz Burrell on 7/13/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import Foundation

struct TopHeadlinesResponse: Decodable {
    let articles: [Article]
}
