//
//  AppDelegate.swift
//  FiMap
//
//  Created by AmamiYou on 2018/09/19.
//  Copyright © 2018 ammYou. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift
import SnapKit
//import Hero

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        sleep(1)
        // Override point for customization after application launch.
        viewInitializeSetting()
        ncmbInitializeSetting()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    // Initalize function

    private func viewInitializeSetting() {
        let mainVC = HomeViewController()
        let leftVC = SideMenuViewController()
        let navigationVC = UINavigationController(rootViewController: mainVC)
        let slideVC = SlideMenuController(mainViewController: navigationVC, leftMenuViewController: leftVC)
//        let mainVC = BottomSheetContainerViewController(mainViewController: HomeViewController(), sheetViewController: CountriesTableViewController())
//        let leftVC = SideMenuViewController()
//        let navigationVC = UINavigationController(rootViewController: mainVC)
//        let slideVC = SlideMenuController(mainViewController: navigationVC, leftMenuViewController: leftVC)


        SlideMenuOptions.panFromBezel = false
        SlideMenuOptions.contentViewScale = 1.0
        SlideMenuOptions.contentViewOpacity = 0.1
        SlideMenuOptions.simultaneousGestureRecognizers = false

        navigationVC.isNavigationBarHidden = true

        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = slideVC
        self.window?.makeKeyAndVisible()
    }

    private func ncmbInitializeSetting() {
//        NCMB.setApplicationKey(Constants.Key.NCMB_APPLICATION_KEY, clientKey: Constants.Key.NCMB_CLIENT_KEY)
    }

    private func globalInitialize() {
    }
}

