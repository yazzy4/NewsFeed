//
//  ArticleCell.swift
//  NewsFeed
//
//  Created by Yaz Burrell on 7/13/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit
import Kingfisher

class ArticleCell: UICollectionViewCell {
    
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var headlineLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        headlineLabel.text?.removeAll()
        articleImageView.image = nil
    }
    
    func populate(with article: Article){
        headlineLabel.text = article.headline
        
        if let urlToImage = article.urlToImage {
            let url = URL(string: urlToImage)
            articleImageView.kf.setImage(with: url)
        }
        
     
        
    }
    
}
