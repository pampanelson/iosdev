//
//  ViewController.swift
//  me.pampa.iosdev
//
//  Created by pampa on 6/30/15.
//  Copyright (c) 2015 pampa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func share(sender: UIButton) {
//        
//        let activityView = UIActivityViewController(
//            activityItems: ["WeChat Sharing"],
//            applicationActivities: nil)
//        
//        
//        self.presentViewController(activityView,
//            animated: true,
//            completion: nil)
        // check if installed Wechat
//        let wxURI:NSURL = NSURL(string: "weixin")!
//        let result = UIApplication.sharedApplication().openURL(wxURI)
//        println(result)
        
        println(WXApi.isWXAppInstalled())
        
        // share to moments
        let _scene = WXSceneTimeline.value
        
        // share by dialog session
        let _scene_sm = WXSceneSession.value
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let wxURI:NSURL = NSURL(string: "WXApi")!
        UIApplication.sharedApplication().openURL(wxURI)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

