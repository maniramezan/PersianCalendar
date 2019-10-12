//
//  FooterView.swift
//  PersianCalendarMac
//
//  Created by Mani Ramezan on 10/13/19.
//  Copyright © 2019 Mani Ramezan. All rights reserved.
//

import SwiftUI

extension CalendarView {
    struct FooterView: View {
        @State var persianDate: Date
        @State var gregorianDate: Date
        
        var body: some View {
            VStack {
                TextField("۱۳۶۵/۱۰/۲۸",
                          value: self.$persianDate,
                          formatter: <#T##Formatter#>,
                          onEditingChanged: { (<#Bool#>) in
                            <#code#>
                },
                          onCommit: {
                            <#code#>
                })
                TextField("18/01/1987", text: self.gregorianDate)
            }
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView.FooterView()
    }
}
