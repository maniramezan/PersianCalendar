//
//  Theme.swift
//  PersianCalendarMac
//
//  Created by Mani Ramezan on 10/12/19.
//  Copyright © 2019 Mani Ramezan. All rights reserved.
//

import Foundation
import SwiftUI

extension CalendarView {
    public class Theme: ObservableObject {
        @Published public var selectedDayTitleColor: Color = .accentColor
        @Published public var selectedDayBackgroundColor: Color = .red
        @Published public var selectedBorderColor: Color = .green
        @Published public var dayTitleColor: Color = .white
        @Published public var dayBackgroundColor: Color = .gray
        @Published public var dayBorderColor: Color = .white
    }
}
