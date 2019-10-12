//
//  ViewController.swift
//  PersianCalendarMac
//
//  Created by Mani Ramezan on 10/12/19.
//  Copyright © 2019 Mani Ramezan. All rights reserved.
//

import Cocoa
import SafariServices.SFSafariApplication
import SwiftUI

class ViewController: NSViewController {
    
    @IBOutlet var calendarPlaceholder: NSView!
    
    private var theme = CalendarView.Theme()
    private let calendarView = CalendarView(currentCalendar: Calendar(identifier: .persian))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calendarContainerView = NSHostingView(rootView: calendarView.environmentObject(theme))
        calendarPlaceholder.addSubview(calendarContainerView)
        calendarContainerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            calendarContainerView.topAnchor.constraint(equalTo: calendarPlaceholder.topAnchor),
            calendarContainerView.bottomAnchor.constraint(equalTo: calendarPlaceholder.bottomAnchor),
            calendarContainerView.leftAnchor.constraint(equalTo: calendarPlaceholder.leftAnchor),
            calendarContainerView.rightAnchor.constraint(equalTo: calendarPlaceholder.rightAnchor),
        ])
    }
    
    @IBAction func openSafariExtensionPreferences(_ sender: AnyObject?) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: "com.manman.PersianCalendarMacExtension") { error in
            if let _ = error {
                
            }
        }
    }

}
