//
//  ViewController.swift
//  downloadingWebContent
//
//  Created by BishopHill on 3/27/17.
//  Copyright © 2017 Dumb Unicorn. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics

class memberYoutubeViewController: UIViewController {
    var member = Members()
    @IBOutlet var webView: UIWebView!

    func loadYoutube(videoID:String) {
        guard
            let youtubeURL = URL(string: videoID)
            else { return }
        webView.loadRequest( URLRequest(url: youtubeURL) )
        print(youtubeURL)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 

        var storage = self.member.youtube
        
        if (storage == "https://www.youtube.com/ /videos") {
            storage = "https://www.youtube.com/TeamKaliber"
        }else {
            print("Its not empty")
            
        }
        
          loadYoutube(videoID: storage)

        print(storage)
        
//        let requestURL = URL(string: storage)
//        let request = URLRequest(url: requestURL!)
//        webView.loadRequest(request)
        

        
//        webView.loadRequest(URLRequest(url: NSURL(string: storage)! as URL))
    
    }
}


