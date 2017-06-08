//
//  ViewController.swift
//  tK Fan
//
//  Created by sudo on 5/15/17.
//  Copyright © 2017 sudo. All rights reserved.
//
import Foundation
import UIKit
import TwitterKit
var Directors = [Members]()
var Streamers = [Members]()
var COD = [Members]()
var creatives = [Members]()
var Management = [Members]()
var rowSections = [Directors.count, Streamers.count, creatives.count, Management.count, COD.count]
var members = [Members]()
class RostersTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var sections = ["DIRECTORS","STREAMERS","CREATIVES","MANAGERS","CALL OF DUTY" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadCOD()
        loadCreators()
        
        filterList()
        streamersLoad()
        loadDirectors()
        print(Directors.count)
        print(rowSections)
    }
    // MARK: - Beginning of Directors
    func loadDirectors() {
        
        let sharp = Members(name: "sharp tK",twitterNickname: "Sharp_tK", altName: "SHARPISHA", altPosition: "YOUTUBER/VLOGGER", job: "", twitter: "Sharp_tK", twitterapp: "Sharp_tK", twitch: "Sharp", twitchapp: "Sharp", instagram: "KaLiBeRSharp", instagramapp: "KaLiBeRSharp", snapchat: " ", snapchatapp: " ", youtube: "TheSharptube", youtubeINTRO: "yxCJfzMUUIA", youtubeapp: "TheSharptube")
                sharp.frontimage = UIImage(named: "sharpprofile")!
        members.append(sharp)
        Streamers.append(sharp)
        Directors.append(sharp)
        let hammy = Members(name: "hamz",twitterNickname: "HAMIZMYNAME", altName: "UNCLE HAM", altPosition: "YOUTUBER/VLOGGER", job: "General Manager", twitter: "HAMIZMYNAME", twitterapp: "HAMIZMYNAME", twitch: "gtimabouttogoham", twitchapp: "gtimabouttogoham", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "GTimABOUTtogoHAM", youtubeINTRO: "BA8aF6todjc", youtubeapp: "GTimABOUTtogoHAM")
                hammy.frontimage = UIImage(named: "HAMZ")!
        Streamers.append(hammy)
        Management.append(hammy)
        Directors.append(hammy)
        members.append(hammy)
        
        let kosdff = Members(name: "kosdff tK",twitterNickname: "KOSDFF", altName: "Justin 'KOSDFF' Chandler", altPosition: "YOUTUBER/VLOGGER", job: "OWNER", twitter: "KOSDFF", twitterapp: "KOSDFF", twitch: "kosdff", twitchapp: "kosdff", instagram: "KOSDFF", instagramapp: "KOSDFF", snapchat: "KOSDFF", snapchatapp: "KOSDFF", youtube: "xKOSDFF", youtubeINTRO: "zPxEjQ13JBA", youtubeapp: "xKOSDFF")
        kosdff.frontimage = UIImage(named: "KOSDFF")!
        Streamers.append(kosdff)
        Management.append(kosdff)
        members.append(kosdff)
        Directors.append(kosdff)
        
        
        let chaos = Members(name: "chaos tK",twitterNickname: "WhosChaos", altName: "WHOS CHAOS", altPosition: "YOUTUBER/VLOGGER", job: "", twitter: "WhosChaos", twitterapp: "WhosChaos", twitch: "whoschaosftw", twitchapp: "whoschaosftw", instagram: "whoschaosftw", instagramapp: "whoschaosftw", snapchat: " ", snapchatapp: " ", youtube: "WhosChaos", youtubeINTRO: "xwmjv9sXinc", youtubeapp: "WhosChaos")
                chaos.frontimage = UIImage(named: "chaosprofile")!
        Directors.append(chaos)
        members.append(chaos)
        
        
        let crispy = Members(name: "crispy tK", twitterNickname: "Crispy", altName: "Crispy", altPosition: "YOUTUBER/VLOGGER", job: "", twitter: "crispy", twitterapp: "crispy", twitch: "CrispyConcords", twitchapp: "CrispyConcords", instagram: "Crispy", instagramapp: "Crispy", snapchat: "CrispyConcords", snapchatapp: "CrispyConcords", youtube: "ClanCrispy", youtubeINTRO: "xJcy4z_Bso0", youtubeapp: "ClanCrispy")
                crispy.frontimage = UIImage(named: "crispyprofile")!
        Streamers.append(crispy)
        Directors.append(crispy)
        members.append(crispy)
        let andimgone = Members(name: "gone tK", twitterNickname: "AND_IM_GONE", altName: "Gone", altPosition: "YOUTUBER/STREAMER", job: " ", twitter: "AND_IM_GONE", twitterapp: "AND_IM_GONE", twitch: "GONE", twitchapp: "GONE", instagram: "ANDIMGONE1", instagramapp: "ANDIMGONE1", snapchat: " ", snapchatapp: " ", youtube: "GONE", youtubeINTRO: "3FapVXPTrdE", youtubeapp: "GONE")
                andimgone.frontimage = UIImage(named: "goneProfile")!
        Directors.append(andimgone)
        members.append(andimgone)
        
        let lostinplace = Members(name: "lost tK", twitterNickname: "Lost1nPlace", altName: "Lost", altPosition: "YOUTUBER", job: "GAMING VIDEOS", twitter: "Lost1nPlace", twitterapp: "Lost1nPlace", twitch: "lost1nplace", twitchapp: "lost1nplace", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "xXLostInPlaceXx", youtubeINTRO: "P8aGSm6QgAE", youtubeapp: "xXLostInPlaceXx")
                lostinplace.frontimage = UIImage(named: "Lost")!
        
        Directors.append(lostinplace)
        members.append(lostinplace)
        
        let crazyteddy = Members(name: "teddy tK", twitterNickname: "iCrazyTeddy", altName: "iCrazyTeddy", altPosition: "YOUTUBER", job: "Streamer/director", twitter: "iCrazyTeddy", twitterapp: "iCrazyTeddy", twitch: "icrazyteddy", twitchapp: "icrazyteddy", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "iCrazyTeddy", youtubeINTRO: "5rGRi-iZLHo", youtubeapp: "iCrazyTeddy")
                crazyteddy.frontimage = UIImage(named: "Teddy")!
        Directors.append(crazyteddy)
        members.append(crazyteddy)
        
        
        let fooya = Members(name: "fooya tK", twitterNickname: "IFOOYA", altName: "Fooya", altPosition: "STREAMER/YOUTUBER", job: "Streamer", twitter: "IFOOYA", twitterapp: "IFOOYA", twitch: "fooya", twitchapp: "fooya", instagram: "FOOYA", instagramapp: "FOOYA", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: " ", youtubeapp: " ")
                fooya.frontimage = UIImage(named: "Fooya")!
        
        Directors.append(fooya)
        Streamers.append(fooya)
        members.append(fooya)
//        let bealight = Members(name: "bealight tK", twitterNickname: "B3Alight_tK", altName: "Bealight", altPosition: "#1 Supporter", job: "#1 Supporter", twitter: "B3Alight_tK", twitterapp: "B3Alight_tK", twitch: "bealight", twitchapp: "bealight", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "mattstrite", youtubeINTRO: "UBQSJC09Ydc", youtubeapp: "mattstrite")
//        //        bealight.frontimage = UIImage(named: "beLightFront")!
//        Directors.append(bealight)
//        members.append(bealight)
        
        let laggin = Members(name: "laggin tK", twitterNickname: "Laggin24x", altName: "Laggin", altPosition: "GAMING NEWS", job: "", twitter: "Laggin24x", twitterapp: "Laggin24x", twitch: "aggin24x", twitchapp: "aggin24x", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "laggin24x", youtubeINTRO: "2HTYnWci3gE", youtubeapp: "laggin24x")
                laggin.frontimage = UIImage(named: "Laggin")!
        Streamers.append(laggin)
        Directors.append(laggin)
        members.append(laggin)
        
        let kb = Members(name: "kb tK", twitterNickname: "KBPRESTIEGE", altName: "KB", altPosition: "COMEDY VIDEOS", job: "Comedy Videos", twitter: "KBPRESTIEGE", twitterapp: "KBPRESTIEGE", twitch: "KNGBLZ", twitchapp: "KNGBLZ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "KNGBLZ", youtubeINTRO: "1AsAk3GNFwY", youtubeapp: "KNGBLZ")
                kb.frontimage = UIImage(named: "KB")!
        Directors.append(kb)
        members.append(kb)
    }
    // MARK: - End of Directors
    
    
    // MARK: - Streamers
    func streamersLoad(){
        let cin = Members(name: "cin tK", job: "", twitter: "CinCinBear", twitterapp: "CinCinBear", twitch: "cincinbear", twitchapp: "cincinbear", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "cincinbeartv", youtubeINTRO: "QIRu2Gkv66A", youtubeapp: "cincinbeartv")
                cin.frontimage = UIImage(named: "Cin")!
        members.append(cin)
        Streamers.append(cin)
        
        let ava = Members(name: "ava tK", job: "", twitter: "OhNoAva_tK", twitterapp: "OhNoAva_tK", twitch: "avajaijai", twitchapp: "avajaijai", instagram: " " , instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: " ", youtubeapp: " ")
                ava.frontimage = UIImage(named: "Ava")!
        members.append(ava)
        Streamers.append(ava)
        
        let adrive = Members(name: "adrive tK", job: "", twitter: "aDrive_tK", twitterapp: "aDrive_tK", twitch: "adrive", twitchapp: "adrive", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "xaDr1v3", youtubeINTRO: "d7wnwvMLJM8", youtubeapp: "xaDr1v3")
                adrive.frontimage = UIImage(named: "Adrive")!
        members.append(adrive)
        Streamers.append(adrive)
        
        let pixel = Members(name: "pixel tK", job: "Streamer", twitter: "Pixel_tK", twitterapp: "Pixel_tK", twitch: "thepixelatedninja", twitchapp: "thepixelatedninja", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "TehPixel8dNinja", youtubeINTRO: "vpgXeqFDhtg", youtubeapp: "TehPixel8dNinja")
                pixel.frontimage = UIImage(named: "Pixel")!
        Streamers.append(pixel)
        members.append(pixel)
        
    }
    // MARK: - End of Streamers
    
    // MARK: - Creators
    func loadCreators()  {
        
        let joshtk = Members(name: "josh tK", job: "Graphic Designer", twitter: "DubaloDesign", twitterapp: "DubaloDesign", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "dubalogaming", youtubeINTRO: "ogOKyZIWU0U", youtubeapp: "dubalogaming")
        joshtk.frontimage = UIImage(named: "JoshTK")!
        members.append(joshtk)
        creatives.append(joshtk)
        
        let behr = Members(name: "behr tK", job: "Graphic Designer", twitter: "BehrDesign", twitterapp: "BehrDesign", twitch: "behrco", twitchapp: "behrco", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "behrdesign", youtubeINTRO: "yRWMnMwU39Q", youtubeapp: "behrdesign")
        behr.frontimage = UIImage(named: "Behr")!
        members.append(behr)
        creatives.append(behr)

        
        let legenda = Members(name: "legenda tK", job: "Co-Lead Designer", twitter: "Legenda_tK", twitterapp: "Legenda_tK", twitch: "legenda_tk", twitchapp: "legenda_tk", instagram: " ", instagramapp: " ", snapchat:  " ", snapchatapp: " ", youtube: "legendarylegendaroyal", youtubeINTRO: " ", youtubeapp: "legendarylegendaroyal")
        legenda.frontimage = UIImage(named: "Legenda")!
        members.append(legenda)
        creatives.append(legenda)
        Management.append(legenda)
        
        
        let vimzo = Members(name: "vimzo tK", job: "Graphic Designer", twitter: "VimZo", twitterapp: "VimZo", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "KaliberCreative", youtubeINTRO: " ", youtubeapp: "KaliberCreative")
        vimzo.frontimage = UIImage(named: "Vimzo")!

        members.append(vimzo)
        creatives.append(vimzo)
        
        let aborted = Members(name: "aborted tK", job: "Logo/Merch Designer", twitter: "AbortedEnigma", twitterapp: "AbortedEnigma", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "KaliberCreative", youtubeINTRO: " ", youtubeapp: "KaliberCreative")
                aborted.frontimage = UIImage(named: "aborted")!
        members.append(aborted)
        creatives.append(aborted)
        
        let faex = Members(name: "faex tK", job: "3D Artist/Animator", twitter: "FaexEditing", twitterapp: "FaexEditing", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "KaliberCreative", youtubeINTRO: " ", youtubeapp: "KaliberCreative")
        faex.frontimage = UIImage(named: "FAEX")!
        members.append(faex)
        creatives.append(faex)
        let samurai = Members(name: "samurai tK", job: "Creative Director", twitter: "smrii", twitterapp: "Samurai_tK", twitch: "xsmri", twitchapp: "xsmri" , instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: "NONE", youtube: "xSMRI", youtubeINTRO: "CScl2ESFAA0", youtubeapp: "xSMRI")
        samurai.frontimage = UIImage(named: "samuraipro")!
        Management.append(samurai)
        creatives.append(samurai)
        members.append(samurai)
        
    }
    // MARK: - end of Creators
    //
    func loadCOD() {
        let happy = Members(name: "happy tK",twitterNickname: "KOSDFF", job: "COD: Player", twitter: " ", twitterapp: " ", twitch: "happyy97", twitchapp: "happyy97", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: " ", youtubeapp: " ")
        happy.frontimage = UIImage(named: "Happy")!
        members.append(happy)
        Streamers.append(happy)
        COD.append(happy)
        
        
        let goonjar = Members(name: "goonjar tK", job: "COD: Player", twitter: "Goonjar", twitterapp: "Goonjar", twitch: "goonjar", twitchapp: "goonjar", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: "e9d_xkmg1hs", youtubeapp: " ")
        goonjar.frontimage = UIImage(named: "Goonjar")!
        members.append(goonjar)
        Streamers.append(goonjar)
        COD.append(goonjar)
        
        let theory = Members(name: "theory tK",twitterNickname: "Theory_tK", job: "Captain", twitter: "Theory_tK", twitterapp: "Theory_tK", twitch: "TheoryCoD", twitchapp: "TheoryCoD", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: "e9d_xkmg1hs", youtubeapp: " ")
                theory.frontimage = UIImage(named: "Theory")!
        //        theory.longimage = UIImage(named: "theoryhero")!
        members.append(theory)
        Streamers.append(theory)
        COD.append(theory)
        
    }
    
    func filterList() { // should probably be called sort and not filter
        Directors.sort() { $1.name > $0.name }

    }
    func streamersList() { // should probably be called sort and not filter
        Streamers.sort() { $1.name > $0.name }

    }
    func creativesList() { // should probably be called sort and not filter
        creatives.sort() { $1.name > $0.name }

    }
    func manageList() { // should probably be called sort and not filter
        Management.sort() { $1.name > $0.name }

    }
    func codList() { // should probably be called sort and not filter
        COD.sort() { $1.name > $0.name }

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
        case 2:
            num_rows = rowSections[2]
            return num_rows
        case 3:
            num_rows = rowSections[3]
            return num_rows
        case 4:
            num_rows = rowSections[4]
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
            filterList()
            cell.textLabel?.text = Directors[indexPath.row].name
        case 1:
            streamersList()
            cell.textLabel?.text = Streamers[indexPath.row].name
        case 2:
            creativesList()
            cell.textLabel?.text = creatives[indexPath.row].name
        case 3:
            manageList()
            cell.textLabel?.text = Management[indexPath.row].name
        case 4:
            codList()
            cell.textLabel?.text = COD[indexPath.row].name
            
            
            //        case 1:
            //            cell.textLabel?.text = creatives[indexPath.row].name
            
            
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch (indexPath.section) {
        case 0:
            let member = Directors[(indexPath as NSIndexPath).row]
            
            self.performSegue(withIdentifier: "MemberSegue", sender: member)
            
                    case 1:
                        let killer = Streamers[(indexPath as NSIndexPath).row]
            
            
                        self.performSegue(withIdentifier: "MemberSegue", sender: killer)
            
        case 2:
            let Hello = creatives[(indexPath as NSIndexPath).row]
            
            
            self.performSegue(withIdentifier: "MemberSegue", sender: Hello)
        case 3:
            let World = Management[(indexPath as NSIndexPath).row]
            
            
            self.performSegue(withIdentifier: "MemberSegue", sender: World)
        case 4:
            let Mike = COD[(indexPath as NSIndexPath).row]
            
            
            self.performSegue(withIdentifier: "MemberSegue", sender: Mike)
        default:
            break
            
        }
        
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let ControlME2 = segue.destination as! profileViewController
        ControlME2.member = sender as! Members
        
        
        
        
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}



