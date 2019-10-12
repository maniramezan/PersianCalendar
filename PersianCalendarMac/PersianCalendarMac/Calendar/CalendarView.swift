//
//  CalendarView.swift
//  PersianCalendarMac
//
//  Created by Mani Ramezan on 10/12/19.
//  Copyright © 2019 Mani Ramezan. All rights reserved.
//

import SwiftUI
import Grallistrix

struct CalendarView: View {
    @EnvironmentObject var theme: Theme
    
    @State var currentCalendar: Calendar
    
    let calendars: [Calendar] = [Calendar(identifier: .persian), Calendar(identifier: .gregorian)]
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(currentCalendar: $currentCalendar, calendars: calendars)
            WeeksView().environmentObject(theme)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            FooterView()
        }
    }
}

#if DEBUG
struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView(currentCalendar: Calendar(identifier: .persian))
            .environmentObject(CalendarView.Theme())
    }
}
#endif
