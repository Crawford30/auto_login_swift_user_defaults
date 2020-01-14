//
//  AppDelegate.swift
//  AutoLogin
//
//  Created by JOEL CRAWFORD on 14/01/2020.
//  Copyright © 2020 RTS. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //===calling the function====
        check()
        
        return true
    }
    //============check if there is nay key in the application or not, user default======
    func check() {
        //=== != nil, means it exist===
        if UserDefaults.standard.value(forKey: "userkey") != nil {
            
            let vc = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: "HomeVC")
            
            //=====creating a navigation controller==
            let navVC = UINavigationController(rootViewController: vc)
            
            //===ading the navigation contoller to the window===
            let share = UIApplication.shared.delegate as? AppDelegate
            
             //====assign root vc to nav vc====
            share?.window?.rootViewController = navVC
            
            //======make it visible==
            share?.window?.makeKeyAndVisible()
            
            
        }
        
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

