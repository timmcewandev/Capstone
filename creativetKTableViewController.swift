
import UIKit
import TwitterKit
class creativetKViewController: TWTRTimelineViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let client = TWTRAPIClient()
        self.dataSource = TWTRUserTimelineDataSource(screenName: "KaliberCreative", apiClient: client)
        TWTRTweetView.appearance().primaryTextColor = UIColor.white
        TWTRTweetView.appearance().backgroundColor = UIColor.init(red: 44/255.0, green: 55/255.0, blue: 75/255.0, alpha: 1.0)
        TWTRTweetView.appearance().linkTextColor = UIColor.red
        
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
