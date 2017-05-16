//
//  ViewController.swift
//  tK Fan
//
//  Created by sudo on 5/15/17.
//  Copyright © 2017 sudo. All rights reserved.
//
import Foundation
import UIKit
var COD = [Members]()
var creatives = [Members]()
var rowSections = [COD.count, creatives.count]
class RostersTableViewController: UIViewController, UITableViewDataSource {
    var sections = ["CALL OF DUTY", "CREATIVES", "DIRECTORS", "MANAGERS","STREAMERS"]
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCOD()
        loadCreators()
        print(rowSections)
        filterList()
        
        
    }
    func loadCOD() {
        let happy = Members(name: "happy tK", job: "COD: Player", twitter: " ", twitterapp: " ", twitch: "happyy97", twitchapp: "happyy97", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: " ", youtubeapp: " ")
        
        COD.append(happy)
        let colechan = Members(name: "colechan tK", job: "COD: Player", twitter: "TSMColeChan", twitterapp: "TSMColeChan", twitch: "colechan827", twitchapp: "colechan827", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: " ", youtubeapp: " ")
        
        COD.append(colechan)
        
        let goonjar = Members(name: "goonjar tK", job: "COD: Player", twitter: "Goonjar", twitterapp: "Goonjar", twitch: "goonjar", twitchapp: "goonjar", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: "e9d_xkmg1hs", youtubeapp: " ")
        
        COD.append(goonjar)
        
        let theory = Members(name: "theory tK", job: "COD: PLAYER", twitter: "Theory_tK", twitterapp: "Theory_tK", twitch: "TheoryCoD", twitchapp: "TheoryCoD", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: "e9d_xkmg1hs", youtubeapp: " ")
//        theory.frontimage = UIImage(named: "theoryprofile")!
        //        theory.longimage = UIImage(named: "theoryhero")!
        
        COD.append(theory)
        
    }
    
    
    func loadCreators()  {
        
        let joshtk = Members(name: "josh tK", job: "Graphic Designer", twitter: "DubaloDesign", twitterapp: "DubaloDesign", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "dubalogaming", youtubeINTRO: "ogOKyZIWU0U", youtubeapp: "dubalogaming")
        
        creatives.append(joshtk)
        
        let behr = Members(name: "behr tK", job: "Graphic Designer", twitter: "BehrDesign", twitterapp: "BehrDesign", twitch: "behrco", twitchapp: "behrco", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "behrdesign", youtubeINTRO: "yRWMnMwU39Q", youtubeapp: "behrdesign")
        
        creatives.append(behr)
        
        let Daniel = Members(name: "daniel tK", job: "Graphic Designer", twitter: "DxnieIl", twitterapp: "DxnieIl", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "KaliberCreative", youtubeapp: "KaliberCreative")
        
        creatives.append(Daniel)
        
        let legenda = Members(name: "legenda tK", job: "Co-Lead Designer", twitter: "Legenda_tK", twitterapp: "Legenda_tK", twitch: "legenda_tk", twitchapp: "legenda_tk", instagram: " ", instagramapp: " ", snapchat:  " ", snapchatapp: " ", youtube: "legendarylegendaroyal", youtubeINTRO: " ", youtubeapp: "legendarylegendaroyal")
        
        creatives.append(legenda)
        
        
        let vimzo = Members(name: "vimzo tK", job: "Graphic Designer", twitter: "VimZo", twitterapp: "VimZo", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "KaliberCreative", youtubeINTRO: " ", youtubeapp: "KaliberCreative")
        
        creatives.append(vimzo)
        
        let aborted = Members(name: "aborted tK", job: "Logo/Merch Designer", twitter: "AbortedEnigma", twitterapp: "AbortedEnigma", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "KaliberCreative", youtubeINTRO: " ", youtubeapp: "KaliberCreative")
        
        creatives.append(aborted)
        
        let faex = Members(name: "faex tK", job: "3D Artist/Animator", twitter: "FaexEditing", twitterapp: "FaexEditing", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "KaliberCreative", youtubeINTRO: " ", youtubeapp: "KaliberCreative")
        
        creatives.append(faex)
        let samurai = Members(name: "samurai tK", job: "Lead Creative Director", twitter: "Samurai_tK", twitterapp: "Samurai_tK", twitch: "xsmri", twitchapp: "xsmri" , instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: "NONE", youtube: "xSMRI", youtubeINTRO: "CScl2ESFAA0", youtubeapp: "xSMRI")
//        samurai.frontimage = UIImage(named: "samurai")!
        creatives.append(samurai)
        
        
    }
    func filterList() { // should probably be called sort and not filter
        COD.sort() { $1.name > $0.name }
        creatives.sort() { $1.name > $0.name }// sort the fruit by name
        // notify the table view the data has changed
    }
    
    
    // ROWS
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        var num_rows:Int = 0
        
        switch (section) {
        case 0:
            num_rows = rowSections[0]
            return num_rows
        case 1:
            num_rows = rowSections[1]
            return num_rows
        default:
            break
                   }
        return num_rows
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        

        let cell = UITableViewCell()
        switch (indexPath.section) {
        case 0:
            cell.textLabel?.text = COD[indexPath.row].name
           
        case 1:
            cell.textLabel?.text = creatives[indexPath.row].name
         
            
        default:
            break
            //        break;
            //        case 2:{
            //            num_rows = [Tvaroslovie count];
            //        }
            //        break;
            //        case 3:{
            //            num_rows = [Skladba count];
            //        }
            //        break;
            //        case 4:{
            //            num_rows = [Sloh count];
            //            }
        }
        
        
        
        return cell
    }
    
    // END OF ROWS
    // SECTIONS
    public func numberOfSections(in tableView: UITableView) -> Int{
        return sections.count
    }
    
    
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        return sections[section]
    }
    
    //END OF SECTIONS
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        view.tintColor = UIColor(red: 44/255.0, green: 55/255.0, blue: 75/255.0, alpha: 1.0)
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.white
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
    
}
