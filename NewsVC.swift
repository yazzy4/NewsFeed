//
//  NewsVC.swift
//  NewsFeed
//
//  Created by Yaz Burrell on 7/7/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "Cell"

class NewsVC: UICollectionViewController {
    
    var articles =
        [Article(headline: "This is news"),
        Article(headline: "This is also news"),
        Article(headline: "This is also some news")]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return articles.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArticleCell", for: indexPath) as? ArticleCell else { return UICollectionViewCell() }
        
        let article = articles[indexPath.item]
        cell.populate(with: article)
        return cell
        
    }

}

