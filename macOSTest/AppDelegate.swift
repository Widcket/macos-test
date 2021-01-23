//
//  AppDelegate.swift
//  macOSTest
//
//  Created by Rita Zerrizuela on 20/02/2020.
//  Copyright © 2020 Auth0. All rights reserved.
//

import Cocoa
import Auth0

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func application(_ application: NSApplication, open urls: [URL]) {
        Auth0.resumeAuth(urls)
    }

}
