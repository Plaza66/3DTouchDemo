//
//  AppDelegate.swift
//  PK3DTouchDemo
//
//  Created by liyan on 15/10/3.
//  Copyright © 2015年 liyan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let item1 = UIApplicationShortcutItem(type: "去哪玩", localizedTitle: "啥好玩")
        let item2 = UIApplicationShortcutItem(type: "去吃啥", localizedTitle: "啥好吃")
        
        UIApplication.sharedApplication().shortcutItems = [item1, item2];// NSArray(objects: item1,item2,nil)
        
        return true
    }
    
    
    func application(application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
        
        print("title:\(shortcutItem.localizedTitle)")
    }


}

