//
//  iPodTouch.swift
//  AppleDeviceModel
//
//  Created by Chen on 2020/9/9.
//

import Foundation

enum iPodTouchDeviceModel: String, DeviceModelProtocol {
    case iPod_touch_1 = "iPod touch (1st generation)"
    case iPod_touch_2 = "iPod touch (2nd generation)"
    case iPod_touch_3 = "iPod touch (3rd generation)"
    case iPod_touch_4 = "iPod touch (4th generation)"
    case iPod_touch_5 = "iPod touch (5th generation)"
    case iPod_touch_6 = "iPod touch (6th generation)"
    case iPod_touch_7 = "iPod touch (7th generation)"

    var modelName: String {
        return rawValue
    }

    var screenSize: ScreenSize {
        switch self {
        case .iPod_touch_1, .iPod_touch_2, .iPod_touch_3, .iPod_touch_4:
            return .inch3dot5
        case .iPod_touch_5, .iPod_touch_6, .iPod_touch_7:
            return .inch4
        }
    }
}

enum iPodTouchDeviceIdentifier: String, DeviceIdentifierProtocol {
    case iPodTouch1_1 = "iPod1,1"
    case iPodTouch2_1 = "iPod2,1"
    case iPodTouch3_1 = "iPod3,1"
    case iPodTouch4_1 = "iPod4,1"
    case iPodTouch5_1 = "iPod5,1"
    case iPodTouch7_1 = "iPod7,1"
    case iPodTouch9_1 = "iPod9,1"

    var modelName: String {
        switch self {
        case .iPodTouch1_1:
            return "iPod touch 1"
        case .iPodTouch2_1:
            return "iPod touch 2"
        case .iPodTouch3_1:
            return "iPod touch 3"
        case .iPodTouch4_1:
            return "iPod touch 4"
        case .iPodTouch5_1:
            return "iPod touch 5"
        case .iPodTouch7_1:
            return "iPod touch 6"
        case .iPodTouch9_1:
            return "iPod touch 7"
        }
    }

    var model: DeviceModelProtocol {
        switch self {
        case .iPodTouch1_1:
            return iPodTouchDeviceModel.iPod_touch_1
        case .iPodTouch2_1:
            return iPodTouchDeviceModel.iPod_touch_2
        case .iPodTouch3_1:
            return iPodTouchDeviceModel.iPod_touch_3
        case .iPodTouch4_1:
            return iPodTouchDeviceModel.iPod_touch_4
        case .iPodTouch5_1:
            return iPodTouchDeviceModel.iPod_touch_5
        case .iPodTouch7_1:
            return iPodTouchDeviceModel.iPod_touch_6
        case .iPodTouch9_1:
            return iPodTouchDeviceModel.iPod_touch_7
        }
    }
}
