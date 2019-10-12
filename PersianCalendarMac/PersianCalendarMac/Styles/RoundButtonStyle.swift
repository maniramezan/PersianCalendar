//
//  RoundButtonStyle.swift
//  PersianCalendarMac
//
//  Created by Mani Ramezan on 10/12/19.
//  Copyright © 2019 Mani Ramezan. All rights reserved.
//

import Foundation
import SwiftUI

public struct RoundButtonStyle: ButtonStyle {

    public let titleFont: Font
    public let titleColor: Color
    public let borderColor: Color
    public let backgroundColor: Color
    public let lineWidth: CGFloat = 1
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(titleColor)
            .font(titleFont)
            .frame(
                minWidth: lineWidth, maxWidth: .infinity,
                minHeight: lineWidth, maxHeight: .infinity)
            .background(
                Circle()
                .stroke(borderColor, lineWidth: lineWidth)
                .overlay(
                    Circle()
                        .fill(backgroundColor)
                )
            )
            .padding(lineWidth)
    }

}
