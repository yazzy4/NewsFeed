//
//  NewsVC.swift
//  NewsFeed
//
//  Created by Yaz Burrell on 7/7/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit
import Alamofire



//API Key:a029c56d97c247339e4625ac61ad4181
//http://newsapi.org/v2/top-headlines
//country=us
//apiKey=a029c56d97c247339e4625ac61ad4181

class NewsVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var articles = [Article]()

    override func viewDidLoad() {
        super.viewDidLoad()

        getArticles()
    }
    
    func getArticles() {
        
        let parameters: Parameters = ["country" : "us", "apiKey" : "a029c56d97c247339e4625ac61ad4181" ]
        
        AF.request("http://newsapi.org/v2/top-headlines", parameters: parameters).responseData { (response) in
        
            guard let data = response.data else { return }
            
            do {
                
//                let json = try JSONSerialization.jsonObject(with: data, options: [])
//                print(json)
                
                let topHeadlinesResponse = try JSONDecoder().decode(TopHeadlinesResponse.self, from: data)
                print(topHeadlinesResponse)
            } catch {
                print(error.localizedDescription)
            }
        }
        
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

