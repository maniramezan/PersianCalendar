//
//  HeaderView.swift
//  PersianCalendarMac
//
//  Created by Mani Ramezan on 10/12/19.
//  Copyright © 2019 Mani Ramezan. All rights reserved.
//

import SwiftUI

extension CalendarView {
    struct HeaderView: View {
        
        @Binding var currentCalendar: Calendar
        
        let calendars: [Calendar]
        
        var body: some View {
            HStack(alignment: .center) {
                Picker(selection: self.$currentCalendar, label: Text("Calendar")) {
                    ForEach(self.calendars, id: \.identifier) { calendar in
                        Text(calendar.identifier.description).tag(calendar)
                    }
                }
            }
        }
    }
}

#if DEBUG
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView.HeaderView(currentCalendar: .constant(defaultCalendar), calendars: supportedCalendars)
        
    }
}
#endif
