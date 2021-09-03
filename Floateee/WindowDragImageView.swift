//
//  WindowDragImageView.swift
//  Floateee
//
//  Created by Krzysztof Kinal on 02/09/2021.
//

import Cocoa

class WindowDragImageView: NSImageView {
    override public func mouseDown(with event: NSEvent) {
        window?.performDrag(with: event)
    }
}
