//
//  AppDelegate.swift
//  Aedron
//
//  Created by Tamas Nemeth on 08/03/16.
//  Copyright © 2016 XY. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window: UIWindow? = {
        var value = UIWindow.init(frame: UIScreen.mainScreen().bounds)
        return value
    }();


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let vc = NBOverviewViewController.init(nibName: nil, bundle: nil);
        let navigationController = NBNavigationController.init(rootViewController:vc)
        self.window!.rootViewController = navigationController

        self.window!.makeKeyAndVisible()
        return true
    }

}

