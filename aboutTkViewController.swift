//
//  aboutTkViewController.swift
//  tK Fan
//
//  Created by sudo on 6/9/17.
//  Copyright © 2017 sudo. All rights reserved.
//

import UIKit

class aboutTkViewController: UIViewController {
    

    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

        @IBAction func contactBTN(_ sender: UIButton) {

            var myVC = storyboard?.instantiateViewController(withIdentifier: "MebersKOSDFF") as! profileViewController
            myVC.member = Members.kosdff()
            navigationController?.pushViewController(myVC,  animated: true)
        
            
        
    }

    @IBAction func storeBTN(_ sender: Any) {
        let url2 = NSURL(string: "https://electronicgamersleague.com/collections/team-kaliber")!
        let url = NSURL(string: "https://electronicgamersleague.com/collections/team-kaliber")!
        if UIApplication.shared.canOpenURL(url2 as URL){
            
        }
        //            IF THE TOP FAILS IT GOES TO THE BOTTOMS AND OPENS IN APP
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print("HELLO")
        //redirect to safari because the user doesn't have Twitter
        UIApplication.shared.open(url2 as URL, options: [:], completionHandler: nil)

    }
    
    @IBAction func audioBTN(_ sender: Any) {
        let url2 = NSURL(string: "http://www.audio-technica.com/world_map/")!
        let url = NSURL(string: "http://www.audio-technica.com/world_map/")!
        if UIApplication.shared.canOpenURL(url2 as URL){
            
        }
        //            IF THE TOP FAILS IT GOES TO THE BOTTOMS AND OPENS IN APP
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print("HELLO")
        //redirect to safari because the user doesn't have Twitter
        UIApplication.shared.open(url2 as URL, options: [:], completionHandler: nil)

    }
    
    @IBAction func KontrolBTN(_ sender: Any) {
        let url2 = NSURL(string: "https://www.kontrolfreek.com/")!
        let url = NSURL(string: "https://www.kontrolfreek.com/")!
        if UIApplication.shared.canOpenURL(url2 as URL){
            
        }
        //            IF THE TOP FAILS IT GOES TO THE BOTTOMS AND OPENS IN APP
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print("HELLO")
        //redirect to safari because the user doesn't have Twitter
        UIApplication.shared.open(url2 as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func scuffBTN(_ sender: UIButton) {
        let url2 = NSURL(string: "https://scufgaming.com/")!
        let url = NSURL(string: "https://scufgaming.com/")!
        if UIApplication.shared.canOpenURL(url2 as URL){
            
        }
        //            IF THE TOP FAILS IT GOES TO THE BOTTOMS AND OPENS IN APP
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print("HELLO")
        //redirect to safari because the user doesn't have Twitter
        UIApplication.shared.open(url2 as URL, options: [:], completionHandler: nil)
    }

    @IBAction func GFUELbtn(_ sender: Any) {
        let url2 = NSURL(string: "https://gfuel.com/")!
        let url = NSURL(string: "https://gfuel.com/")!
        if UIApplication.shared.canOpenURL(url2 as URL){
            
        }
        //            IF THE TOP FAILS IT GOES TO THE BOTTOMS AND OPENS IN APP
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print("HELLO")
        //redirect to safari because the user doesn't have Twitter
        UIApplication.shared.open(url2 as URL, options: [:], completionHandler: nil)
    }
    

}
