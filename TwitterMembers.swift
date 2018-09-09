import UIKit
import TwitterKit
import Fabric
import Crashlytics


class TwitterMembers: TWTRTimelineViewController  {
     var member = Members()
      override func viewDidLoad() {
     
        super.viewDidLoad()
   Twitter.sharedInstance().sessionStore.existingUserSessions()

        let screenName = member.twitterNickname
        print(screenName)
        
let client = TWTRAPIClient()

        self.dataSource = TWTRUserTimelineDataSource(screenName: member.twitterNickname , apiClient: client)
        TWTRTweetView.appearance().primaryTextColor = UIColor.white
        TWTRTweetView.appearance().backgroundColor = UIColor.init(red: 44/255.0, green: 55/255.0, blue: 75/255.0, alpha: 1.0)
        TWTRTweetView.appearance().linkTextColor = UIColor.red
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
