//
//  PreviewModels.swift
//  PersianCalendarMac
//
//  Created by Mani Ramezan on 10/12/19.
//  Copyright © 2019 Mani Ramezan. All rights reserved.
//

#if DEBUG

import Foundation
import Grallistrix
import SwiftUI

extension PreviewProvider {
    
    static var supportedCalendars: [Calendar] {
        [Calendar(identifier: .persian), Calendar(identifier: .gregorian)]
    }
    static var defaultCalendar: Calendar {
        Calendar(identifier: .persian)
    }
}

#endif
