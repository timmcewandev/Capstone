//
//  ViewController.swift
//  downloadingWebContent
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
  }
  override func viewDidLoad() {
    
    super.viewDidLoad()
    var storage = self.member.youtube
    if (storage == "https://www.youtube.com/ /videos") {
      storage = "https://www.youtube.com/TeamKaliber"
    }else {
    }
    loadYoutube(videoID: storage)
  }
}


