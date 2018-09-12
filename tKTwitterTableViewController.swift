

import UIKit
import TwitterKit
import Reachability

class tkTwitterViewController: TWTRTimelineViewController  {

    var member = Members()
    override func viewDidLoad() {
        super.viewDidLoad()

        let client = TWTRAPIClient()
        self.dataSource = TWTRUserTimelineDataSource(screenName: "TeamKaliber" , apiClient: client)
        TWTRTweetView.appearance().primaryTextColor = UIColor.white
        TWTRTweetView.appearance().backgroundColor = UIColor.init(red: 44/255.0, green: 55/255.0, blue: 75/255.0, alpha: 1.0)
        TWTRTweetView.appearance().linkTextColor = UIColor.red
        
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    
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
    
  }
}

