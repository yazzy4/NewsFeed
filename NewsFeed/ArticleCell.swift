//
//  ArticleCell.swift
//  NewsFeed
//
//  Created by Yaz Burrell on 7/13/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class ArticleCell: UICollectionViewCell {
    
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var headlineLabel: UILabel!
    
    func populate(with article: Article){
        headlineLabel.text = article.headline
    }
    
}
