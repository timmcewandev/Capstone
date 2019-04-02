//
//  ViewController.swift
//  downloadingWebContent
//  Copyright © 2017 Dumb Unicorn. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics
import Reachability

class memberYoutubeViewController: UIViewController {
  
  var member = Members()
  let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
  @IBOutlet var webView: UIWebView!
  
  func loadYoutube(videoID:String) {
    guard
      let youtubeURL = URL(string: videoID)
      else { return }
    webView.loadRequest( URLRequest(url: youtubeURL) )
  }
  override func viewWillAppear(_ animated: Bool) {
    
    
    let reachability = Reachability()!
    reachability.whenUnreachable = { _ in
      let alert = UIAlertController(title: "😭", message: "Don't hate us because your internet doesn't work -- Please reconnect device to internet ", preferredStyle: .alert)
      self.present(alert, animated: true, completion: nil)
      let when = DispatchTime.now() + 2
      DispatchQueue.main.asyncAfter(deadline: when){
        alert.dismiss(animated: true, completion: nil)
      }
    }
    do {
      try reachability.startNotifier()
    } catch {
      print("Unable to start notifier")
    }
    view.addSubview(activityIndicator)
    activityIndicator.frame = view.bounds
    activityIndicator.startAnimating()
  }
  override func viewDidLoad() {
    
    super.viewDidLoad()
    let getViews = view.subviews
    print(getViews)
    var storage = self.member.youtube
    if (storage == "https://www.youtube.com/ /videos") {
      storage = "https://www.youtube.com/TeamKaliber"
      
    }else {
    }
    loadYoutube(videoID: storage)
  }
  
}


