

var filePath: String {
  //creates a directory to where we are saving it
  let manager = FileManager.default
  //returns an array of urls from our documentDirectory and we take the first path
  let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first
  //    print("this is the url path in the documentDirectory \(url)")
  //3 - creates a new path component and creates a new file called "Data" which is where we will store our Data array.
  return (url!.appendingPathComponent("Data").path)
}


import UIKit
import Foundation
import MediaPlayer
import Crashlytics
import TwitterKit
import RealmSwift
import Reachability

class profileViewController: UIViewController  {
  @IBOutlet weak var containerView: UIView!
  weak var currentViewController: UIViewController?
  var store = DataStore.sharedInstnce
  var navigationBarAppearace = UINavigationBar.appearance()
  @IBOutlet weak var PlusSignature: UIBarButtonItem!
  var member = Members()
  
  @IBOutlet weak var labelOUT: UILabel!
  @IBOutlet weak var popupNOW: UIView!
  @IBOutlet weak var job: UILabel!
  @IBOutlet weak var tweetView: UIView!
  @IBOutlet weak var LiveNOWOUTLET: UIButton!
  @IBOutlet weak var profilepicture: UIImageView!
  @IBOutlet weak var heroimage: UIImageView!
  @IBOutlet weak var longimage: UIImageView!
  @IBOutlet weak var youtuberect: UIImageView!
  @IBOutlet weak var BackgroundHeroImage: UIImageView!
  @IBOutlet weak var wv: UIWebView!
  @IBOutlet weak var NAMEOUTLET: UILabel!
  // MARK: - Social Handles
  @IBOutlet weak var twitch: UIButton!
  @IBOutlet weak var youtube: UIButton!
  @IBOutlet weak var twitter: UIButton!
  @IBOutlet weak var instagram: UIButton!
  @IBOutlet weak var snapchat: UIButton!
  @IBOutlet weak var jobOUTLET: UILabel!
  @IBOutlet weak var vwToDisplayColor: UIView!
  @IBOutlet weak var NavTitle: UINavigationBar!
  @IBOutlet weak var segmentedControl: UISegmentedControl!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    labelOUT.isHidden = true
    self.job.isHidden = self.member.job.contains("")
    self.twitch.isHidden = self.member.twitch.contains("http://player.twitch.tv/?channel= ")
    self.twitch.isHidden = self.member.twitchapp.contains("twitch://stream/#channel_name ")
    self.youtube.isHidden = self.member.youtube.contains("https://www.youtube.com/ ")
    self.youtube.isHidden = self.member.youtubeapp.contains("youtube://www.youtube.com/ ")
    self.twitter.isHidden = self.member.twitter.contains("https://twitter.com/ ")
    self.twitter.isHidden = self.member.twitterapp.contains("twitter://user?screen_name= ")
    self.instagram.isHidden = self.member.instagramapp.contains("instagram://user?username= ")
    self.instagram.isHidden = self.member.instagram.contains("https://instagram.com/ ")
    self.snapchat.isHidden = self.member.snapchat.contains("https://www.snapchat.com/add/ ")
    self.profilepicture.image = self.member.frontimage
    
    self.jobOUTLET.text = self.member.altPosition
    self.job.text = self.member.job
    if member.altName == " " {
      self.NavTitle.topItem?.title = self.member.name
      
    } else {
      self.NavTitle.topItem?.title = self.member.altName
    }
    self.navigationBarAppearace.backgroundColor = UIColor(red: 44/255.0, green: 55/255.0, blue: 75/255.0, alpha: 1.0)
    self.view.backgroundColor = UIColor.white
    let twitterViewController = self.storyboard?.instantiateViewController(withIdentifier: "ComponentA") as! TwitterMembers
    twitterViewController.member = self.member
    twitterViewController.view.translatesAutoresizingMaskIntoConstraints = false
    self.addChildViewController(twitterViewController)
    self.addSubview(subView: twitterViewController.view, toView:self.containerView!)
    self.currentViewController = twitterViewController
  }
  
  fileprivate func internetIsNotReachable() {
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
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    
    internetIsNotReachable()
    
  }
  
  @IBAction func backButton(_ sender: UIBarButtonItem) {
    
    dismiss(animated: true, completion: nil)
  }
  
  @IBAction func showComponent(sender: UISegmentedControl) {
    
    if sender.selectedSegmentIndex == 0 {
      let twitterViewController = self.storyboard?.instantiateViewController(withIdentifier: "ComponentA") as! TwitterMembers
      twitterViewController.member = self.member
      twitterViewController.view.translatesAutoresizingMaskIntoConstraints = false
      self.addChildViewController(twitterViewController)
      
      self.addSubview(subView: twitterViewController.view, toView:self.containerView!)
      self.currentViewController = twitterViewController
      
    } else {
      let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "ComponentB") as! memberYoutubeViewController
      newViewController.member = self.member
      newViewController.view.translatesAutoresizingMaskIntoConstraints = false
      self.cycleFromViewController(oldViewController: self.currentViewController!, toViewController: newViewController)
      self.currentViewController = newViewController
    }
  }
  
  func cycleFromViewController(oldViewController: UIViewController, toViewController newViewController: UIViewController) {
    oldViewController.willMove(toParentViewController: nil)
    self.addChildViewController(newViewController)
    self.addSubview(subView: newViewController.view, toView:self.containerView!)
    newViewController.view.alpha = 0
    newViewController.view.layoutIfNeeded()
    UIView.animate(withDuration: 0.5, animations: {
      newViewController.view.alpha = 1
      oldViewController.view.alpha = 0
    },
                   completion: { finished in
                    oldViewController.view.removeFromSuperview()
                    oldViewController.removeFromParentViewController()
                    newViewController.didMove(toParentViewController: self)
    })
  }
  func addSubview(subView:UIView, toView parentView:UIView) {
    parentView.addSubview(subView)
    
    var viewBindingsDict = [String: AnyObject]()
    viewBindingsDict["subView"] = subView
    parentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[subView]|",
                                                             options: [], metrics: nil, views: viewBindingsDict))
    parentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[subView]|",
                                                             options: [], metrics: nil, views: viewBindingsDict))
  }
  
  
  
  // MARK: - animation
  func addUntitledAnimationAnimationToView(viewToAnimate: UIView) {
    let overshootTiming = CAMediaTimingFunction(controlPoints: 0.00, 0.00, 0.58, 1.30)
    
    let youTubeIconFullColorScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
    youTubeIconFullColorScaleXAnimation.duration = 0.070
    youTubeIconFullColorScaleXAnimation.values = [1.000, 0.700, 0.900] as [Float]
    youTubeIconFullColorScaleXAnimation.keyTimes = [0.000, 0.429, 1.000] as [NSNumber]
    youTubeIconFullColorScaleXAnimation.timingFunctions = [overshootTiming, overshootTiming]
    viewToAnimate.layer.add(youTubeIconFullColorScaleXAnimation, forKey:"Untitled Animation_ScaleX")
    
    let youTubeIconFullColorScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
    youTubeIconFullColorScaleYAnimation.duration = 0.070
    youTubeIconFullColorScaleYAnimation.values = [1.000, 1.200, 0.800] as [Float]
    youTubeIconFullColorScaleYAnimation.keyTimes = [0.000, 0.429, 1.000] as [NSNumber]
    youTubeIconFullColorScaleYAnimation.timingFunctions = [overshootTiming, overshootTiming]
    viewToAnimate.layer.add(youTubeIconFullColorScaleYAnimation, forKey:"Untitled Animation_ScaleY")
  }
  func addUntitledAnimationAnimationToViewe(viewToAnimate: UIView) {
    let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
    let instantTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
    
    let tKScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
    tKScaleXAnimation.duration = 4.786
    tKScaleXAnimation.values = [1.000, 1.000, 1.000, 0.900, 0.900, 0.800, 0.700, 0.700, 0.800, 0.900, 0.900, 0.900] as [Float]
    tKScaleXAnimation.keyTimes = [0.000, 0.429, 0.429, 0.429, 0.544, 0.544, 0.552, 0.799, 0.799, 0.847, 1.000, 1.000] as [NSNumber]
    
    tKScaleXAnimation.timingFunctions = [instantTiming, instantTiming, linearTiming, instantTiming, instantTiming, linearTiming, instantTiming, instantTiming, linearTiming, instantTiming, instantTiming]
    viewToAnimate.layer.add(tKScaleXAnimation, forKey:"Untitled Animation_ScaleX")
    
    let tKScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
    tKScaleYAnimation.duration = 4.346
    tKScaleYAnimation.values = [1.000, 1.000, 1.000, 0.900, 0.800, 0.700, 0.700, 0.700, 0.700, 0.700, 0.800, 0.900, 1.000, 1.100, 1.200, 1.300, 1.400, 1.500, 1.600, 1.700, 1.800, 1.900, 2.000, 2.100, 2.200, 2.300, 2.400, 2.400, 2.300, 2.200, 2.100, 2.000, 1.900, 1.800, 1.700, 1.600, 1.500, 1.400, 1.300, 1.200, 1.100, 1.000] as [Float]
    
    tKScaleYAnimation.keyTimes = [0.000, 0.454, 0.454, 0.488, 0.494, 0.503, 0.575, 0.575, 0.576, 0.576, 0.577, 0.582, 0.585, 0.588, 0.592, 0.601, 0.604, 0.607, 0.610, 0.614, 0.618, 0.622, 0.623, 0.630, 0.633, 0.634, 0.638, 0.765, 0.765, 0.789, 0.804, 0.826, 0.839, 0.848, 0.865, 0.905, 0.911, 0.916, 0.923, 0.964, 0.973, 1.000] as [NSNumber]
    tKScaleYAnimation.timingFunctions = [instantTiming, instantTiming, linearTiming, linearTiming, linearTiming, instantTiming, instantTiming, instantTiming, instantTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, instantTiming, instantTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
    viewToAnimate.layer.add(tKScaleYAnimation, forKey:"Untitled Animation_ScaleY")
    
    let tKOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
    tKOpacityAnimation.duration = 2.119
    tKOpacityAnimation.values = [0.000, 0.000, 0.000, 0.002, 0.015, 0.020, 0.029, 0.039, 0.044, 0.046, 0.051, 0.053, 0.055, 0.060, 0.067, 0.075, 0.082, 0.087, 0.089, 0.099, 0.109, 0.117, 0.129, 0.139, 0.144, 0.152, 0.157, 0.172, 0.177, 0.185, 0.195, 0.200, 0.205, 0.210, 0.214, 0.217, 0.219, 0.224, 0.229, 0.237, 0.247, 0.255, 0.263, 0.268, 0.273, 0.278, 0.286, 0.288, 0.290, 0.293, 0.295, 0.302, 0.307, 0.309, 0.312, 0.320, 0.324, 0.329, 0.334, 0.348, 0.353, 0.365, 0.373, 0.390, 0.400, 0.416, 0.424, 0.432, 0.442, 0.447, 0.452, 0.459, 0.467, 0.472, 0.477, 0.487, 0.492, 0.497, 0.502, 0.509, 0.521, 0.529, 0.539, 0.548, 0.561, 0.572, 0.580, 0.588, 0.599, 0.607, 0.612, 0.617, 0.622, 0.624, 0.642, 0.645, 0.650, 0.652, 0.654, 0.657, 0.659, 0.663, 0.672, 0.680, 0.699, 0.707, 0.716, 0.724, 0.735, 0.740, 0.750, 0.755, 0.758, 0.763, 0.768, 0.773, 0.781, 0.786, 0.794, 0.807, 0.812, 0.822, 0.827, 0.832, 0.840, 0.845, 0.855, 0.857, 0.865, 0.867, 0.872, 0.877, 0.882, 0.890, 0.902, 0.905, 0.917, 0.924, 0.929, 0.939, 0.944, 0.947, 0.957, 0.962, 0.969, 0.982, 0.990, 0.997, 1.000, 1.000, 1.000, 1.000] as [Float]
    tKOpacityAnimation.keyTimes = [0.000, 0.000, 0.000, 0.090, 0.099, 0.102, 0.109, 0.114, 0.118, 0.121, 0.125, 0.130, 0.134, 0.142, 0.148, 0.156, 0.162, 0.165, 0.171, 0.178, 0.185, 0.189, 0.194, 0.201, 0.204, 0.210, 0.213, 0.223, 0.227, 0.233, 0.237, 0.244, 0.250, 0.254, 0.260, 0.263, 0.267, 0.271, 0.275, 0.280, 0.286, 0.290, 0.295, 0.299, 0.304, 0.307, 0.316, 0.326, 0.335, 0.339, 0.346, 0.350, 0.354, 0.358, 0.362, 0.369, 0.373, 0.378, 0.384, 0.390, 0.394, 0.403, 0.409, 0.418, 0.426, 0.430, 0.433, 0.441, 0.446, 0.450, 0.454, 0.462, 0.469, 0.472, 0.478, 0.483, 0.487, 0.491, 0.496, 0.504, 0.513, 0.520, 0.524, 0.529, 0.535, 0.539, 0.544, 0.548, 0.555, 0.558, 0.562, 0.565, 0.570, 0.575, 0.585, 0.590, 0.594, 0.600, 0.605, 0.611, 0.615, 0.622, 0.626, 0.631, 0.637, 0.641, 0.645, 0.648, 0.653, 0.659, 0.664, 0.669, 0.673, 0.676, 0.681, 0.684, 0.688, 0.691, 0.696, 0.701, 0.709, 0.713, 0.716, 0.724, 0.728, 0.734, 0.739, 0.745, 0.751, 0.755, 0.758, 0.763, 0.766, 0.771, 0.782, 0.787, 0.797, 0.803, 0.809, 0.815, 0.823, 0.828, 0.834, 0.841, 0.849, 0.857, 0.862, 0.873, 0.887, 0.891, 1.000, 1.000] as [NSNumber]
    tKOpacityAnimation.timingFunctions = [instantTiming, instantTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, instantTiming, instantTiming]
    viewToAnimate.layer.add(tKOpacityAnimation, forKey:"Untitled Animation_Opacity")
  }
  
  
  
  func addUntitledAnimationAnimationToViewView(viewToAnimate: UIView) {
    let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
    
    let reunitedMaskScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
    reunitedMaskScaleXAnimation.duration = 0.300
    reunitedMaskScaleXAnimation.values = [0.078, 3.080] as [Float]
    reunitedMaskScaleXAnimation.keyTimes = [0.000, 1.000] as [NSNumber]
    reunitedMaskScaleXAnimation.timingFunctions = [linearTiming]
    viewToAnimate.layer.add(reunitedMaskScaleXAnimation, forKey:"Untitled Animation_ScaleX")
    
    let reunitedMaskScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
    reunitedMaskScaleYAnimation.duration = 0.300
    reunitedMaskScaleYAnimation.values = [0.029, 1.172] as [Float]
    reunitedMaskScaleYAnimation.keyTimes = [0.000, 1.000] as [NSNumber]
    reunitedMaskScaleYAnimation.timingFunctions = [linearTiming]
    viewToAnimate.layer.add(reunitedMaskScaleYAnimation, forKey:"Untitled Animation_ScaleY")
    
    let reunitedMaskTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
    reunitedMaskTranslationXAnimation.duration = 0.300
    reunitedMaskTranslationXAnimation.values = [0.000, 0.000] as [Float]
    reunitedMaskTranslationXAnimation.keyTimes = [0.000, 1.000] as [NSNumber]
    reunitedMaskTranslationXAnimation.timingFunctions = [linearTiming]
    viewToAnimate.layer.add(reunitedMaskTranslationXAnimation, forKey:"Untitled Animation_TranslationX")
    
    let reunitedMaskTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
    reunitedMaskTranslationYAnimation.duration = 0.300
    reunitedMaskTranslationYAnimation.values = [0.000, 0.000] as [Float]
    reunitedMaskTranslationYAnimation.keyTimes = [0.000, 1.000] as [NSNumber]
    reunitedMaskTranslationYAnimation.timingFunctions = [linearTiming]
    reunitedMaskTranslationYAnimation.repeatCount = HUGE
    viewToAnimate.layer.add(reunitedMaskTranslationYAnimation, forKey:"Untitled Animation_TranslationY")
  }
  
  
  // MARK: - end of animation
  
  @IBAction func snapchatbutton(_ sender: Any) {
    Answers.logContentView(withName: "SnapChat Action", contentType: "\(member.name): \(member.snapchat)", contentId: "\(member.name)", customAttributes: ["Favorites Count":20, "Screen Orientation":"Landscape"])
    addUntitledAnimationAnimationToView(viewToAnimate: sender as! UIView)
    let url2 = NSURL(string: self.member.snapchatapp)!
    let url = NSURL(string: self.member.snapchat)!
    if UIApplication.shared.canOpenURL(url2 as URL){
      
    }
    //            IF THE TOP FAILS IT GOES TO THE BOTTOMS AND OPENS IN APP
    UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    print("HELLO")
    //redirect to safari because the user doesn't have Twitter
    UIApplication.shared.open(url2 as URL, options: [:], completionHandler: nil)
  }
  
  @IBAction func youtubeButton(_ sender: Any) {
    Answers.logContentView(withName: "Youtube Action", contentType: "\(member.name): \(member.youtube)", contentId: "\(member.name)", customAttributes: ["Favorites Count":20, "Screen Orientation":"Landscape"])
    addUntitledAnimationAnimationToView(viewToAnimate: sender as! UIView)
    let url2 = NSURL(string: self.member.youtubeapp)!
    let url = NSURL(string: self.member.youtube)!
    if UIApplication.shared.canOpenURL(url2 as URL){
    }
    UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    UIApplication.shared.open(url2 as URL, options: [:], completionHandler: nil)
  }
  
  @IBAction func twitchButton(_ sender: Any) {
    Answers.logContentView(withName: "Twitch Action", contentType: "\(member.name): \(member.twitch)", contentId: "\(member.name)", customAttributes: ["Favorites Count":20, "Screen Orientation":"Landscape"])
    addUntitledAnimationAnimationToView(viewToAnimate: sender as! UIView)
    let url2 = NSURL(string: self.member.twitchapp)!
    let url = NSURL(string: self.member.twitch)!
    if UIApplication.shared.canOpenURL(url2 as URL){
    }
    UIApplication.shared.open(url2 as URL, options: [:], completionHandler: nil)
    UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
  }
  
  @IBAction func instagramme(_ sender: Any) {
    
    addUntitledAnimationAnimationToView(viewToAnimate: sender as! UIView)
    Answers.logContentView(withName: "Twitter Action", contentType: "\(member.name): \(member.twitter)", contentId: "\(member.name)", customAttributes: ["Favorites Count":20, "Screen Orientation":"Landscape"])
    let url2 = NSURL(string: self.member.instagram)!
    let url = NSURL(string: self.member.instagramapp)!
    if UIApplication.shared.canOpenURL(url2 as URL){
    }
    UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    UIApplication.shared.open(url2 as URL, options: [:], completionHandler: nil)
    
  }
  
  @IBAction func twitternow(_ sender: Any) {
    
    addUntitledAnimationAnimationToView(viewToAnimate: sender as! UIView)
    Answers.logContentView(withName: "Twitter Action", contentType: "\(member.name): \(member.twitter)", contentId: "\(member.name)", customAttributes: ["Favorites Count":20, "Screen Orientation":"Landscape"])
    let url2 = NSURL(string: self.member.twitterapp)!
    let url = NSURL(string: self.member.twitter)!
    if UIApplication.shared.canOpenURL(url2 as URL){
    }
    UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    UIApplication.shared.open(url2 as URL, options: [:], completionHandler: nil)
  }
  
  @IBAction func addToFavs(_ sender: UIBarButtonItem) {
    
    let unwrappedText = member.name
    let data = Data()
    data.name = unwrappedText
    do {
      let realm = try Realm()
      try realm.write {
        realm.add(data)
      }
    } catch {
      print("Error in initializing new realm \(error)")
    }
    let newShoppingListItem = MemberAdd(name: unwrappedText)
    self.saveData(item: newShoppingListItem)
    let alert = UIAlertController(title: "\(member.name)", message: "has been added into favs 👍", preferredStyle: .alert)
    self.present(alert, animated: true, completion: nil)
    let when = DispatchTime.now() + 2
    DispatchQueue.main.asyncAfter(deadline: when){
      alert.dismiss(animated: true, completion: nil)
    }
    
  }
  
  public func saveData(item: MemberAdd) {
    
    self.store.memberAdd.append(item)
    NSKeyedArchiver.archiveRootObject(self.store.memberAdd, toFile: filePath)
  }
  
  public func loadData() {
    
    if let ourData = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as? [MemberAdd] {
      self.store.memberAdd = ourData
    }
  }
  override var prefersStatusBarHidden: Bool {
    return true
  }
}

