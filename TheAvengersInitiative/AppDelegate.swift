//
//  AppDelegate.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 22/05/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainCoordinator: MainCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let window: UIWindow = UIWindow(frame: UIScreen.main.bounds)
        self.mainCoordinator = MainCoordinator(window: window)
        self.window = window

        mainCoordinator?.start()
        

        return true
    }
}

