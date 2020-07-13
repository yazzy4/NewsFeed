//
//  NewsVC.swift
//  NewsFeed
//
//  Created by Yaz Burrell on 7/7/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher



class NewsVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let height: CGFloat = 240
        
        let width = (collectionView.frame.width / 2) - 2
        
        let size = CGSize(width: width, height: height)
        
        return size
    }

}

