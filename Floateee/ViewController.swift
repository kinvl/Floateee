//
//  ViewController.swift
//  Floateee
//
//  Created by Krzysztof Kinal on 02/09/2021.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var imageView: NSImageView!

    private let nc = NotificationCenter.default
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nc.addObserver(self, selector: #selector(onDidPressOpen), name: Notification.Name("didPressOpen"), object: nil)
        
        imageView.canDrawSubviewsIntoLayer = true
        imageView.imageScaling = .scaleProportionallyUpOrDown
        imageView.animates = true
        imageView.image = NSImage(named: "help")
    }

    override var representedObject: Any? {
        didSet {
        }
    }
    
    
    @objc func onDidPressOpen(_ notification: Notification) {
        let openPanel = NSOpenPanel()
        
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories = false
        openPanel.canCreateDirectories = false
        openPanel.canChooseFiles = true
        openPanel.allowedFileTypes = ["gif", "jpg", "png", "tiff", "jpeg"]
        
        let response = openPanel.runModal()
        
        if (response == NSApplication.ModalResponse.OK) {
            imageView.image = NSImage(contentsOf: openPanel.url!)
        }
        
    }
    
}

