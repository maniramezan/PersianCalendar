//
//  DayView.swift
//  PersianCalendarMac
//
//  Created by Mani Ramezan on 10/12/19.
//  Copyright © 2019 Mani Ramezan. All rights reserved.
//

import SwiftUI

extension CalendarView {
    struct DayView: View {
        @EnvironmentObject var theme: Theme
        
        @State var day: Int
        @Binding var isSelected: Bool
        
        let onTapped: (DayView) -> Void
        
        var body: some View {
            Button("\(day)") {
                self.onTapped(self)
            }
            .buttonStyle(RoundButtonStyle(
                titleFont: .body,
                titleColor: self.isSelected ? theme.selectedDayTitleColor : theme.dayTitleColor,
                borderColor: self.isSelected ? theme.selectedBorderColor : theme.dayBorderColor,
                backgroundColor: self.isSelected ? theme.selectedDayBackgroundColor : theme.dayBackgroundColor))
        }
        
        // MARK - Actions
        class Actions {
            var tapped: (DayView) -> Void = { _ in }
        }
    }
}

#if DEBUG
struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView.DayView(day: 12, isSelected: .constant(false)) { _ in }
            .environmentObject(CalendarView.Theme())
            .frame(width: 80, height: 80)
    }
}
#endif
