//
//  AppDelegate.swift
//  iTahDoodle
//
//  Created by 王朝孟 on 2022/1/16.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    
//    window = UIWindow.init(frame: UIScreen.main.bounds)
//
//    //1.纯代码创建VC
//        window?.rootViewController = MyViewController()
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.makeKeyAndVisible()
        
        self.window?.rootViewController = ViewController();
        
        return true
    }

   


}

