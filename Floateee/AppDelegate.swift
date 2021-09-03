//
//  AppDelegate.swift
//  Floateee
//
//  Created by Krzysztof Kinal on 02/09/2021.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    
    private let nc = NotificationCenter.default

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @IBAction func didPressOpen(_ sender: Any) {
        nc.post(name: Notification.Name("didPressOpen"), object: nil)
    }
    
    
}

