//
//  Streamers.swift
//  tK Fan
//
import UIKit

class Members {
    
    var name:String = ""
    var twitterNickname:String = ""
    var altName:String = ""
    var altPosition:String = ""
    var job:String = ""
    var twitter:String = ""
    var twitterapp: String = ""
    var twitch:String = ""
    var twitchapp:String = ""
    var instagram:String = ""
    var instagramapp:String = ""
    var snapchat:String = ""
    var snapchatapp:String = ""
    var youtube:String = ""
    var youtubeINTRO:String = ""
    var youtubeapp:String = ""
    var frontimage = UIImage()

    
    
    
    init(name:String = "",twitterNickname:String = "", altName:String = "", altPosition:String = "", job:String = "", twitter:String = "", twitterapp: String = "", twitch: String = "", twitchapp: String = "", instagram: String = "", instagramapp: String = "", snapchat:String = "", snapchatapp: String = "", youtube: String = "", youtubeINTRO:String = "", youtubeapp:String = "") {
        self.name = name
        self.twitterNickname = twitterNickname
        self.altName = altName
        self.altPosition = altPosition
        self.job = job
        self.twitter = "https://twitter.com/" + twitter
        self.twitterapp = "twitter://user?screen_name=" + twitterapp
        self.twitch = "http://player.twitch.tv/?channel=" + twitch
        self.twitchapp = "twitch://stream/#channel_name" + twitchapp
        self.instagram = "https://instagram.com/" + instagram
        self.instagramapp = "instagram://user?username=" + instagramapp
        self.snapchat = "https://www.snapchat.com/add/" + snapchat
        self.snapchatapp = "snapchat.com/add/" + snapchatapp
        self.youtube = "https://www.youtube.com/" + youtube + "/videos"
        self.youtubeapp = "youtube://www.youtube.com/" + youtubeapp
        self.youtubeINTRO = youtubeINTRO

        
    }
    class func getMember(name: String) -> Members {
        switch name {
            
//            TODO: DIRECTORS
            case "theory tK": return self.theory()
            case "goonjar tK": return self.goonjar()
            case "happy tK": return self.happy()
            case "samurai tK": return self.samurai()
            case "aborted tK": return self.aborted()
            case "legenda tK": return self.legenda()
            case "josh tK": return self.joshtk()
            case "adrive tK": return self.adrive()
            case "faex tK": return self.faex()
            case "pixel tK": return self.pixel()
            case "ava tK": return self.ava()
            case "Cin tK": return self.cin()
            case "kb tK": return self.kb()
            case "laggin tK": return self.laggin()
            case "fooya tK": return self.fooya()
            case "teddy tK": return self.crazyteddy()
            case "lost tK": return self.lostinplace()
            case "gone tK": return self.andimgone()
            case "crispy tK": return self.crispy()
            case "chaos tK": return self.chaos()
            case "kosdff tK": return self.kosdff()
            case "hamz": return self.hammy()
            case "sharp tK": return self.sharp()
            case "vimzo tK": return self.vimzo()
        default: break
           
        }
     return Members.vimzo()
    }
    
    class func sharp () -> Members {
        let sharp = Members(name: "sharp tK",twitterNickname: "Sharp_tK", altName: "SHARPISHA", altPosition: "YOUTUBER/VLOGGER", job: "", twitter: "Sharp_tK", twitterapp: "Sharp_tK", twitch: "Sharp", twitchapp: "Sharp", instagram: "KaLiBeRSharp", instagramapp: "KaLiBeRSharp", snapchat: " ", snapchatapp: " ", youtube: "TheSharptube", youtubeINTRO: "yxCJfzMUUIA", youtubeapp: "TheSharptube")
        sharp.frontimage = UIImage(named: "sharpprofile")!
    return sharp
    }
    class func hammy () -> Members {
    let hammy = Members(name: "hamz",twitterNickname: "HAMIZMYNAME", altName: "UNCLE HAM", altPosition: "YOUTUBER/VLOGGER", job: "General Manager", twitter: "HAMIZMYNAME", twitterapp: "HAMIZMYNAME", twitch: "gtimabouttogoham", twitchapp: "gtimabouttogoham", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "GTimABOUTtogoHAM", youtubeINTRO: "BA8aF6todjc", youtubeapp: "GTimABOUTtogoHAM")
    hammy.frontimage = UIImage(named: "HAMZ")!
    return hammy
    }
    
    class func kosdff () -> Members {
        let kosdff = Members(name: "kosdff tK",twitterNickname: "KOSDFF", altName: "Justin 'KOSDFF' Chandler", altPosition: "YOUTUBER/VLOGGER", job: "OWNER", twitter: "KOSDFF", twitterapp: "KOSDFF", twitch: "kosdff", twitchapp: "kosdff", instagram: "KOSDFF", instagramapp: "KOSDFF", snapchat: "KOSDFF", snapchatapp: "KOSDFF", youtube: "xKOSDFF", youtubeINTRO: "zPxEjQ13JBA", youtubeapp: "xKOSDFF")
        kosdff.frontimage = UIImage(named: "KOSDFF")!
        return kosdff
    }
    
    class func chaos () -> Members {
    let chaos = Members(name: "chaos tK",twitterNickname: "WhosChaos", altName: "WHOS CHAOS", altPosition: "YOUTUBER/VLOGGER", job: "", twitter: "WhosChaos", twitterapp: "WhosChaos", twitch: "whoschaosftw", twitchapp: "whoschaosftw", instagram: "whoschaosftw", instagramapp: "whoschaosftw", snapchat: " ", snapchatapp: " ", youtube: "WhosChaos", youtubeINTRO: "xwmjv9sXinc", youtubeapp: "WhosChaos")
    chaos.frontimage = UIImage(named: "chaosprofile")!
    return chaos
    }
    
    class func crispy () -> Members {
        let crispy = Members(name: "crispy tK", twitterNickname: "Crispy", altName: "Crispy", altPosition: "YOUTUBER/VLOGGER", job: "", twitter: "crispy", twitterapp: "crispy", twitch: "CrispyConcords", twitchapp: "CrispyConcords", instagram: "Crispy", instagramapp: "Crispy", snapchat: "CrispyConcords", snapchatapp: "CrispyConcords", youtube: "ClanCrispy", youtubeINTRO: "xJcy4z_Bso0", youtubeapp: "ClanCrispy")
        crispy.frontimage = UIImage(named: "crispyprofile")!
        return crispy
    }
    
    
    class func andimgone () -> Members {
        let andimgone = Members(name: "gone tK", twitterNickname: "AND_IM_GONE", altName: "Gone", altPosition: "YOUTUBER/STREAMER", job: " ", twitter: "AND_IM_GONE", twitterapp: "AND_IM_GONE", twitch: "GONE", twitchapp: "GONE", instagram: "ANDIMGONE1", instagramapp: "ANDIMGONE1", snapchat: " ", snapchatapp: " ", youtube: "GONE", youtubeINTRO: "3FapVXPTrdE", youtubeapp: "GONE")
        andimgone.frontimage = UIImage(named: "goneProfile")!
        return andimgone
    }
    
    class func lostinplace () -> Members {
    let lostinplace = Members(name: "lost tK", twitterNickname: "Lost1nPlace", altName: "Lost", altPosition: "YOUTUBER", job: "GAMING VIDEOS", twitter: "Lost1nPlace", twitterapp: "Lost1nPlace", twitch: "lost1nplace", twitchapp: "lost1nplace", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "xXLostInPlaceXx", youtubeINTRO: "P8aGSm6QgAE", youtubeapp: "xXLostInPlaceXx")
    lostinplace.frontimage = UIImage(named: "Lost")!
    return lostinplace
    }
    
//    TODO TEDDY
    
    class func crazyteddy () -> Members {
        let crazyteddy = Members(name: "teddy tK", twitterNickname: "iCrazyTeddy", altName: "iCrazyTeddy", altPosition: "YOUTUBER", job: "Streamer/director", twitter: "iCrazyTeddy", twitterapp: "iCrazyTeddy", twitch: "icrazyteddy", twitchapp: "icrazyteddy", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "iCrazyTeddy", youtubeINTRO: "5rGRi-iZLHo", youtubeapp: "iCrazyTeddy")
        crazyteddy.frontimage = UIImage(named: "Teddy")!
return crazyteddy
        
    }
    class func fooya () -> Members {
        let fooya = Members(name: "fooya tK", twitterNickname: "iFooYa", altName: "Fooya", altPosition: "STREAMER/YOUTUBER", job: "Streamer", twitter: "iFooYa", twitterapp: "iFooYa", twitch: "fooya", twitchapp: "fooya", instagram: "FOOYA", instagramapp: "FOOYA", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: " ", youtubeapp: " ")
    fooya.frontimage = UIImage(named: "Fooya")!
return fooya
    }
    
    class func laggin () -> Members {
        let laggin = Members(name: "laggin tK", twitterNickname: "Laggin24x", altName: "Laggin", altPosition: "GAMING NEWS", job: "", twitter: "Laggin24x", twitterapp: "Laggin24x", twitch: "aggin24x", twitchapp: "aggin24x", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "laggin24x", youtubeINTRO: "2HTYnWci3gE", youtubeapp: "laggin24x")
        laggin.frontimage = UIImage(named: "Laggin")!
        return laggin
    }
    
    
    class func kb () -> Members {
        let kb = Members(name: "kb tK", twitterNickname: "KBPRESTIEGE", altName: "KB", altPosition: "COMEDY VIDEOS", job: "Comedy Videos", twitter: "KBPRESTIEGE", twitterapp: "KBPRESTIEGE", twitch: "KNGBLZ", twitchapp: "KNGBLZ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "KNGBLZ", youtubeINTRO: "1AsAk3GNFwY", youtubeapp: "KNGBLZ")
        kb.frontimage = UIImage(named: "KB")!

        return kb
    }
    
    class func cin () -> Members {
        let cin = Members(name: "Cin tK", twitterNickname: "CinCinBear", altName: "Cin tK", altPosition: "COMEDY VIDEOS", job: "", twitter: "CinCinBear", twitterapp: "CinCinBear", twitch: "cincinbear", twitchapp: "cincinbear", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "cincinbeartv", youtubeINTRO: "QIRu2Gkv66A", youtubeapp: "cincinbeartv")
        cin.frontimage = UIImage(named: "Cin")!

        
        return cin
    }
    
    
     class func ava () -> Members {
    let ava = Members(name: "ava tK", twitterNickname: "OhNoAva_tK", altName: "ava tK", altPosition: "H1Z1 streamer", job: "", twitter: "OhNoAva_tK", twitterapp: "OhNoAva_tK", twitch: "avajaijai", twitchapp: "avajaijai", instagram: " " , instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: " ", youtubeapp: " ")
    ava.frontimage = UIImage(named: "Ava")!
return ava
    }
    class func adrive () -> Members {
        let adrive = Members(name: "adrive tK", twitterNickname: "aDrive_tK", altName: "ava tK", altPosition: "Twitch streamer", job: "", twitter: "aDrive_tK", twitterapp: "aDrive_tK", twitch: "adrive", twitchapp: "adrive", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "xaDr1v3", youtubeINTRO: "d7wnwvMLJM8", youtubeapp: "xaDr1v3")
        adrive.frontimage = UIImage(named: "Adrive")!

        return adrive
    }
    
       class func pixel () -> Members {
    let pixel = Members(name: "pixel tK", twitterNickname: "Pixel_tK", altName: "Pixel", altPosition: "Twitch streamer", job: "Streamer", twitter: "Pixel_tK", twitterapp: "Pixel_tK", twitch: "thepixelatedninja", twitchapp: "thepixelatedninja", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "TehPixel8dNinja", youtubeINTRO: "vpgXeqFDhtg", youtubeapp: "TehPixel8dNinja")
    pixel.frontimage = UIImage(named: "Pixel")!
    return pixel
}
    
    class func joshtk () -> Members {
        let joshtk = Members(name: "josh tK",  twitterNickname: "DubaloDesign", altName: "Josh tK", altPosition: "Designer", job: "Graphic Designer", twitter: "DubaloDesign", twitterapp: "DubaloDesign", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "dubalogaming", youtubeINTRO: "ogOKyZIWU0U", youtubeapp: "dubalogaming")
        joshtk.frontimage = UIImage(named: "JoshTK")!

        return joshtk
    }

   class func legenda () -> Members {
    let legenda = Members(name: "legenda tK", twitterNickname: "Legenda_tK", altName: "Legenda", altPosition: "Designer",  job: "Co-Lead Designer", twitter: "Legenda_tK", twitterapp: "Legenda_tK", twitch: "legenda_tk", twitchapp: "legenda_tk", instagram: " ", instagramapp: " ", snapchat:  " ", snapchatapp: " ", youtube: "legendarylegendaroyal", youtubeINTRO: " ", youtubeapp: "legendarylegendaroyal")
    legenda.frontimage = UIImage(named: "Legenda")!
return legenda
    }
    
    class func vimzo () -> Members {
        let vimzo = Members(name: "vimzo tK", job: "Graphic Designer", twitter: "VimZo", twitterapp: "VimZo", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "KaliberCreative", youtubeINTRO: " ", youtubeapp: "KaliberCreative")
        vimzo.frontimage = UIImage(named: "Vimzo")!
        
        return vimzo
    }
    
    
     class func aborted () -> Members {
    let aborted = Members(name: "aborted tK", twitterNickname: "AbortedEnigma", altName: "Aborted", altPosition: "Designer", job: "Logo/Merch Designer", twitter: "AbortedEnigma", twitterapp: "AbortedEnigma", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "KaliberCreative", youtubeINTRO: " ", youtubeapp: "KaliberCreative")
    aborted.frontimage = UIImage(named: "aborted")!
    return aborted
    }
    
    
    class func faex () -> Members {
        let faex = Members(name: "faex tK", twitterNickname: "faex tK", altName: "Faex", altPosition: "Designer", job: "3D Artist/Animator", twitter: "FaexEditing", twitterapp: "FaexEditing", twitch: " ", twitchapp: " ", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: "KaliberCreative", youtubeINTRO: " ", youtubeapp: "KaliberCreative")
        faex.frontimage = UIImage(named: "FAEX")!

        return faex
    }
    
    class func samurai () -> Members {
        let samurai = Members(name: "samurai tK", twitterNickname: "smriii", altName: "Samurai", altPosition: "CDO", job: " ", twitter: "smriii", twitterapp: "Samurai_tK", twitch: "xsmri", twitchapp: "xsmri" , instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: "NONE", youtube: "xSMRI", youtubeINTRO: "CScl2ESFAA0", youtubeapp: "xSMRI")
        samurai.frontimage = UIImage(named: "samuraipro")!

        
        return samurai
    }
    
    
    
    class func happy () -> Members {
        let happy = Members(name: "happy tK", twitterNickname: "OpSuda", altName: "Happy", altPosition: "", job: "COD: Player", twitter: "OpSuda", twitterapp: "OpSuda", twitch: "opsuda", twitchapp: "opsuda", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: " ", youtubeapp: " ")
        happy.frontimage = UIImage(named: "Happy")!

        
        
        return happy
    }
    
    
    class func goonjar () -> Members {
        let goonjar = Members(name: "goonjar tK", twitterNickname: "Goonjar", altName: "Goon", altPosition: "", job: "COD: Player", twitter: "Goonjar", twitterapp: "Goonjar", twitch: "goonjar", twitchapp: "goonjar", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: "e9d_xkmg1hs", youtubeapp: " ")
        goonjar.frontimage = UIImage(named: "Goonjar")!
        
        
        
        return goonjar
    }
    
    
    class func theory () -> Members {
        let theory = Members(name: "theory tK", twitterNickname: "Theory_tK", altName: "Theory", altPosition: "", job: "Captain", twitter: "Theory_tK", twitterapp: "Theory_tK", twitch: "TheoryCoD", twitchapp: "TheoryCoD", instagram: " ", instagramapp: " ", snapchat: " ", snapchatapp: " ", youtube: " ", youtubeINTRO: "e9d_xkmg1hs", youtubeapp: " ")
        theory.frontimage = UIImage(named: "Theory")!

        
        
        
        return theory
    }
    
    
    
    
    
    
}
