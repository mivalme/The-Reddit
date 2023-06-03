//
//  AppDelegate.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 30/05/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let initialViewController = FeedRouter.createModule()
        /* Initiating instance of ui-navigation-controller with view-controller */
        let navigationController = UINavigationController(rootViewController: initialViewController)
        /* Setup custom navigation bar*/
//        navigationController.navigationBar.barTintColor = ZemogaThemeColors.customGreen
        navigationController.navigationBar.tintColor = UIColor.white
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
        /* Setting up the root view-controller as ui-navigation-controller */
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }

}

