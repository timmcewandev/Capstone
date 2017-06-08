//
//  Streamers.swift
//  tK Fan
//
//  Created by sudo on 5/8/17.
//  Copyright © 2017 sudo. All rights reserved.
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
    var behance:String = ""
    var behanceapp:String = ""
    
    
    
    init(name:String = "",twitterNickname:String = "", altName:String = "", altPosition:String = "", job:String = "", twitter:String = "", twitterapp: String = "", twitch: String = "", twitchapp: String = "", instagram: String = "", instagramapp: String = "", snapchat:String = "", snapchatapp: String = "", youtube: String = "", youtubeINTRO:String = "", youtubeapp:String = "", behance:String = "", behanceapp:String = "") {
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
        self.behance = "www.behance.net/" + behance
        self.behanceapp = "www.behance.net/" + behanceapp
        
    }
    
    
    
}
