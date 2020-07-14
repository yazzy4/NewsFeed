//
//  ArticleDetailVC.swift
//  NewsFeed
//
//  Created by Yaz Burrell on 7/14/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit
import WebKit


class ArticleDetailVC: UIViewController {
    
    @IBOutlet weak var articleWebView: WKWebView!
    
    var article: Article?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let articleURL = article?.url, let url = URL(string: articleURL) {
               
            let request = URLRequest(url: url)
            
            articleWebView.load(request)
            
        }
           
    
    }
    
   


 
}
