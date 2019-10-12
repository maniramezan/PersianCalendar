//
//  WeeksView.swift
//  PersianCalendarMac
//
//  Created by Mani Ramezan on 10/12/19.
//  Copyright © 2019 Mani Ramezan. All rights reserved.
//

import SwiftUI

extension CalendarView {
    struct WeeksView: View {
        
        @EnvironmentObject var theme: Theme
        
        @State var selectedDay: Int = 12
        
        var currentLocale = Locale(identifier: "fa-IR")
        
        private func day(row: Int, col: Int) -> Int {
            row * 7 + col + 1
        }
        
        var body: some View {
            GeometryReader { reader in
                HStack(alignment: .center) {
                    ForEach(0..<7) { col in
                        VStack() {
                            Text(self.currentLocale.calendar.shortWeekdaySymbols[col].prefix(1))
                                .frame(height: 20)
                            ForEach(0..<5) { row in
                                CalendarView.DayView(day: self.day(row: row, col: col), isSelected: .constant(self.day(row: row, col: col) == self.selectedDay)) {
                                        self.selectedDay = $0.day
                                    }
                                    .environmentObject(self.theme)
                            }
                            Spacer()
                        }
                    }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                }.frame(height: reader.size.height)
            }
        }
    }
}

#if DEBUG
struct WeeksView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView.WeeksView()
            .environmentObject(CalendarView.Theme())
    }
}
#endif
