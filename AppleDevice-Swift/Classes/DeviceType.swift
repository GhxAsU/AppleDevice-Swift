//
//  DeviceType.swift
//  AppleDeviceModel
//
//  Created by Chen on 2020/9/10.
//

import Foundation

public enum DeviceType: String {
    case iPhone
    case iPad
    case iPodTouch = "iPod Touch"
    case unknow

    var name: String {
        return rawValue
    }
}
