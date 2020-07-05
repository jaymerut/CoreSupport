//
//  AppDelegate.swift
//  CoreSupport
//
//  Created by Jayme Rutkoski on 7/5/20.
//  Copyright © 2020 coresupport. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var homeViewController :UIViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let mainViewController = HomeViewController()

        let navigationController = UINavigationController(rootViewController: mainViewController)

        window?.rootViewController = navigationController
        window!.makeKeyAndVisible()
        return true
    }


}

