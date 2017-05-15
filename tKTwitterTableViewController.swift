
import UIKit
import TwitterKit
class tkTwitterViewController: TWTRTimelineViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let client = TWTRAPIClient()
        self.dataSource = TWTRUserTimelineDataSource(screenName: "KaliberCreative", apiClient: client)
        TWTRTweetView.appearance().primaryTextColor = UIColor.white
        TWTRTweetView.appearance().backgroundColor = UIColor.init(red: 19/255.0, green: 19/255.0, blue: 19/255.0, alpha: 1.0)
        TWTRTweetView.appearance().linkTextColor = UIColor.red
        
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
