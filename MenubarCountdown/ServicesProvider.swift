//
//  ServicesProvider.swift
//  Menubar Countdown
//
//  Copyright © 2019 Kristopher Johnson. All rights reserved.
//

import Foundation
import Cocoa

/**
 Implements the Services menu items for the application.

 The provided services are

 - Start Timer: show the start dialog
 - Stop Timer: reset the timer
 - Pause Timer: pause the timer
 - Resume Timer: resume paused timer

 See also

 - The `NSServices` entries in `Info.plist`
 - Construction and registration of the service provider in `AppDelegate.applicationDidFinishLaunching()`

 */
@objc final class ServicesProvider: NSObject {

    private var appDelegate: AppDelegate

    init(appDelegate: AppDelegate) {
        self.appDelegate = appDelegate
    }

    /**
     Handle a Start TImer service request.
     */
    @objc func startTimer(_ pboard: NSPasteboard, userData: String, error: NSErrorPointer) {
        Log.debug("Start Timer service was requested")
        appDelegate.showStartTimerDialog(self)
    }

    /**
     Handle a Stop Timer service request.
     */
    @objc func stopTimer(_ pboard: NSPasteboard, userData: String, error: NSErrorPointer) {
        Log.debug("Stop Timer service was requested")
        appDelegate.stopTimer(self)
    }

    /**
     Handle a Pause Timer service request.
     */
    @objc func pauseTimer(_ pboard: NSPasteboard, userData: String, error: NSErrorPointer) {
        Log.debug("Pause Timer service was requested")
        appDelegate.pauseTimer(self)
    }

    /**
     Handle a Resume Timer service request.
     */
    @objc func resumeTimer(_ pboard: NSPasteboard, userData: String, error: NSErrorPointer) {
        Log.debug("Resume Timer service was requested")
        appDelegate.resumeTimer(self)
    }
}
