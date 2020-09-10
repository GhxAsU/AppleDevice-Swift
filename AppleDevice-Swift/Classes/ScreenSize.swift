//
//  ScreenSize.swift
//  AppleDeviceModel
//
//  Created by Chen on 2020/9/10.
//

import Foundation

public enum ScreenSize: String, CustomStringConvertible {
    case unknow = "unknow screen size"

    case inch3dot5 = "3.5 inch"
    case inch4 = "4.0 inch"
    case inch4dot7 = "4.7 inch"
    case inch5dot5 = "5.5 inch"
    case inch5dot8 = "5.8 inch"
    case inch6dot1 = "6.1 inch"
    case inch6dot5 = "6.5 inch"

    case inch7dot9 = "7.9 inch"
    case inch9dot7 = "9.7 inch"
    case inch10dot2 = "10.2 inch"
    case inch10dot5 = "10.5 inch"
    case inch11 = "11 inch"
    case inch112dot9 = "12.9 inch"

    public var description: String {
        return rawValue
    }
}
