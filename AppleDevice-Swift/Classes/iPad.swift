//
//  iPad.swift
//  AppleDeviceModel
//
//  Created by Chen on 2020/9/9.
//

import Foundation

enum iPadDeviceModel: String, DeviceModelProtocol {
    case iPad_Simulator = "iPad Simulator"

    case iPad_1 = "iPad 1"
    case iPad_2 = "iPad 2"
    case iPad_3 = "iPad (3rd generation)"
    case iPad_4 = "iPad (4th generation)"
    case iPad_5 = "iPad (5th generation)"
    case iPad_6 = "iPad (6th generation)"
    case iPad_7 = "iPad (7th generation)"

    case iPadAir = "iPad Air"
    case iPadAir_2 = "iPad Air 2"
    case iPadAir_3 = "iPad Air (3rd generation)"

    case iPadPro_12_9_inch = "iPad Pro (12.9-inch)"
    case iPadPro_9_7_inch = "iPad Pro (9.7-inch)"
    case iPadPro_12_9_inch_2 = "iPad Pro (12.9-inch) (2nd generation)"
    case iPadPro_10_5_inch = "iPad Pro (10.5-inch)"
    case iPadPro_11_inch = "iPad Pro (11-inch)"
    case iPadPro_12_9_inch_3 = "iPad Pro (12.9-inch) (3rd generation)"
    case iPadPro_11_inch_2 = "iPad Pro (11-inch) (2nd generation)"
    case iPadPro_12_9_inch_4 = "iPad Pro (12.9-inch) (4th generation)"

    case iPadMini = "iPad mini"
    case iPadMini_2 = "iPad mini 2"
    case iPadMini_3 = "iPad mini 3"
    case iPadMini_4 = "iPad mini 4"
    case iPadMini_5 = "iPad mini (5th generation)"

    var modelName: String {
        return rawValue
    }

    var screenSize: ScreenSize {
        switch self {
        case .iPad_Simulator:
            return .unknow
        case .iPadMini, .iPadMini_2, .iPadMini_3, .iPadMini_4, .iPadMini_5:
            return .inch7dot9
        case .iPad_1, .iPad_2, .iPad_3, .iPad_4, .iPad_5, .iPad_6, .iPadPro_9_7_inch, .iPadAir, .iPadAir_2:
            return .inch9dot7
        case .iPad_7:
            return .inch10dot2
        case .iPadPro_10_5_inch, .iPadAir_3:
            return .inch10dot5
        case .iPadPro_11_inch, .iPadPro_11_inch_2:
            return .inch11
        case .iPadPro_12_9_inch, .iPadPro_12_9_inch_2, .iPadPro_12_9_inch_3, .iPadPro_12_9_inch_4:
            return .inch112dot9
        }
    }
}

enum iPadDeviceIdentifier: String, DeviceIdentifierProtocol {
    case iPad_Simulator = "x86_64"
    case iPad1_1 = "iPad1,1"
    case iPad1_2 = "iPad1,2"
    case iPad2_1 = "iPad2,1"
    case iPad2_2 = "iPad2,2"
    case iPad2_3 = "iPad2,3"
    case iPad2_4 = "iPad2,4"
    case iPad2_5 = "iPad2,5"
    case iPad2_6 = "iPad2,6"
    case iPad2_7 = "iPad2,7"
    case iPad3_1 = "iPad3,1"
    case iPad3_2 = "iPad3,2"
    case iPad3_3 = "iPad3,3"
    case iPad3_4 = "iPad3,4"
    case iPad3_5 = "iPad3,5"
    case iPad3_6 = "iPad3,6"
    case iPad4_1 = "iPad4,1"
    case iPad4_2 = "iPad4,2"
    case iPad4_3 = "iPad4,3"
    case iPad4_4 = "iPad4,4"
    case iPad4_5 = "iPad4,5"
    case iPad4_6 = "iPad4,6"
    case iPad4_7 = "iPad4,7"
    case iPad4_8 = "iPad4,8"
    case iPad4_9 = "iPad4,9"
    case iPad5_1 = "iPad5,1"
    case iPad5_2 = "iPad5,2"
    case iPad5_3 = "iPad5,3"
    case iPad5_4 = "iPad5,4"
    case iPad6_3 = "iPad6,3"
    case iPad6_4 = "iPad6,4"
    case iPad6_7 = "iPad6,7"
    case iPad6_8 = "iPad6,8"
    case iPad6_11 = "iPad6,11"
    case iPad6_12 = "iPad6,12"
    case iPad7_1 = "iPad7,1"
    case iPad7_2 = "iPad7,2"
    case iPad7_3 = "iPad7,3"
    case iPad7_4 = "iPad7,4"
    case iPad7_5 = "iPad7,5"
    case iPad7_6 = "iPad7,6"
    case iPad7_11 = "iPad7,11"
    case iPad7_12 = "iPad7,12"
    case iPad8_1 = "iPad8,1"
    case iPad8_2 = "iPad8,2"
    case iPad8_3 = "iPad8,3"
    case iPad8_4 = "iPad8,4"
    case iPad8_5 = "iPad8,5"
    case iPad8_6 = "iPad8,6"
    case iPad8_7 = "iPad8,7"
    case iPad8_8 = "iPad8,8"
    case iPad8_9 = "iPad8,9"
    case iPad8_10 = "iPad8,10"
    case iPad8_11 = "iPad8,11"
    case iPad8_12 = "iPad8,12"
    case iPad11_1 = "iPad11,1"
    case iPad11_2 = "iPad11,2"
    case iPad11_3 = "iPad11,3"
    case iPad11_4 = "iPad11,4"

    var modelName: String {
        switch self {
        case .iPad_Simulator:
            return iPadDeviceModel.iPad_Simulator.modelName
        case .iPad1_1:
            return "iPad 1"
        case .iPad1_2:
            return "iPad 1 3G"
        case .iPad2_1:
            return "iPad 2 (WiFi)"
        case .iPad2_2:
            return "iPad 2 (GSM)"
        case .iPad2_3:
            return "iPad 2 (CDMA)"
        case .iPad2_4:
            return "iPad 2 (Mid 2012)"
        case .iPad2_5:
            return "iPad Mini (WiFi)"
        case .iPad2_6:
            return "iPad Mini (GSM)"
        case .iPad2_7:
            return "iPad Mini (Global)"
        case .iPad3_1:
            return "iPad 3 (WiFi)"
        case .iPad3_2:
            return "iPad 3 (CDMA)"
        case .iPad3_3:
            return "iPad 3 (GSM)"
        case .iPad3_4:
            return "iPad 4 (WiFi)"
        case .iPad3_5:
            return "iPad 4 (GSM)"
        case .iPad3_6:
            return "iPad 4 (Global)"
        case .iPad4_1:
            return "iPad Air (WiFi)"
        case .iPad4_2:
            return "iPad Air (Cellular)"
        case .iPad4_3:
            return "iPad Air (China)"
        case .iPad4_4:
            return "iPad Mini 2 (WiFi)"
        case .iPad4_5:
            return "iPad Mini 2 (Cellular)"
        case .iPad4_6:
            return "iPad Mini 2 (China)"
        case .iPad4_7:
            return "iPad Mini 3 (WiFi)"
        case .iPad4_8:
            return "iPad Mini 3 (Cellular)"
        case .iPad4_9:
            return "iPad Mini 3 (China)"
        case .iPad5_1:
            return "iPad Mini 4 (WiFi)"
        case .iPad5_2:
            return "iPad Mini 4 (Cellular)"
        case .iPad5_3:
            return "iPad Air 2 (WiFi)"
        case .iPad5_4:
            return "iPad Air 2 (Cellular)"
        case .iPad6_3:
            return "iPad Pro 9.7-inch (WiFi)"
        case .iPad6_4:
            return "iPad Pro 9.7-inch (Cellular)"
        case .iPad6_7:
            return "iPad Pro 12.9-inch (WiFi)"
        case .iPad6_8:
            return "iPad Pro 12.9-inch (Cellular)"
        case .iPad6_11:
            return "iPad 5 (WiFi)"
        case .iPad6_12:
            return "iPad 5 (Cellular)"
        case .iPad7_1:
            return "iPad Pro 2 (12.9-inch, WiFi)"
        case .iPad7_2:
            return "iPad Pro 2 (12.9-inch, Cellular)"
        case .iPad7_3:
            return "iPad Pro (10.5-inch, WiFi)"
        case .iPad7_4:
            return "iPad Pro (10.5-inch, Cellular)"
        case .iPad7_5:
            return "iPad 6 (WiFi)"
        case .iPad7_6:
            return "iPad 6 (Cellular)"
        case .iPad7_11:
            return "iPad 7 (WiFi)"
        case .iPad7_12:
            return "iPad 7 (Cellular)"
        case .iPad8_1:
            return "iPad Pro 3 (11-inch, WiFi)"
        case .iPad8_2:
            return "iPad Pro 3 (11-inch, WiFi, 1TB Model)"
        case .iPad8_3:
            return "iPad Pro 3 (11-inch, Cellular)"
        case .iPad8_4:
            return "iPad Pro 3 (11-inch, Cellular, 1TB Model)"
        case .iPad8_5:
            return "iPad Pro 3 (12.9-inch, WiFi)"
        case .iPad8_6:
            return "iPad Pro 3 (12.9-inch, WiFi, 1TB Model)"
        case .iPad8_7:
            return "iPad Pro 3 (12.9-inch, Cellular)"
        case .iPad8_8:
            return "iPad Pro 3 (12.9-inch, Cellular, 1TB Model)"
        case .iPad8_9:
            return "iPad Pro 4 (11-inch, WiFi)"
        case .iPad8_10:
            return "iPad Pro 4 (11-inch, Cellular)"
        case .iPad8_11:
            return "iPad Pro 4 (12.9-inch, WiFi)"
        case .iPad8_12:
            return "iPad Pro 4 (12.9-inch, Cellular)"
        case .iPad11_1:
            return "iPad Mini 5 (WiFi)"
        case .iPad11_2:
            return "iPad Mini 5 (Cellular)"
        case .iPad11_3:
            return "iPad Air 3 (WiFi)"
        case .iPad11_4:
            return "iPad Air 3 (Cellular)"
        }
    }

    public var model: DeviceModelProtocol {
        switch self {
        case .iPad_Simulator:
            return iPadDeviceModel.iPad_Simulator
        case .iPad1_1, .iPad1_2:
            return iPadDeviceModel.iPad_1
        case .iPad2_1, .iPad2_2, .iPad2_3, .iPad2_4:
            return iPadDeviceModel.iPad_2
        case .iPad2_5, .iPad2_6, .iPad2_7:
            return iPadDeviceModel.iPadMini
        case .iPad3_1, .iPad3_2, .iPad3_3:
            return iPadDeviceModel.iPad_3
        case .iPad3_4, .iPad3_5, .iPad3_6:
            return iPadDeviceModel.iPad_4
        case .iPad4_1, .iPad4_2, .iPad4_3:
            return iPadDeviceModel.iPadAir
        case .iPad4_4, .iPad4_5, .iPad4_6:
            return iPadDeviceModel.iPadMini_2
        case .iPad4_7, .iPad4_8, .iPad4_9:
            return iPadDeviceModel.iPadMini_3
        case .iPad5_1, .iPad5_2:
            return iPadDeviceModel.iPadMini_4
        case .iPad5_3, .iPad5_4:
            return iPadDeviceModel.iPadAir_2
        case .iPad6_3, .iPad6_4:
            return iPadDeviceModel.iPadPro_9_7_inch
        case .iPad6_7, .iPad6_8:
            return iPadDeviceModel.iPadPro_12_9_inch
        case .iPad6_11, .iPad6_12:
            return iPadDeviceModel.iPad_5
        case .iPad7_1, .iPad7_2:
            return iPadDeviceModel.iPadPro_12_9_inch_2
        case .iPad7_3, .iPad7_4:
            return iPadDeviceModel.iPadPro_10_5_inch
        case .iPad7_5, .iPad7_6:
            return iPadDeviceModel.iPad_6
        case .iPad7_11, .iPad7_12:
            return iPadDeviceModel.iPad_7
        case .iPad8_1, .iPad8_2, .iPad8_3, .iPad8_4:
            return iPadDeviceModel.iPadPro_11_inch
        case .iPad8_5, .iPad8_6, .iPad8_7, .iPad8_8:
            return iPadDeviceModel.iPadPro_12_9_inch_3
        case .iPad8_9, .iPad8_10:
            return iPadDeviceModel.iPadPro_11_inch_2
        case .iPad8_11, .iPad8_12:
            return iPadDeviceModel.iPadPro_12_9_inch_4
        case .iPad11_1, .iPad11_2:
            return iPadDeviceModel.iPadMini_5
        case .iPad11_3, .iPad11_4:
            return iPadDeviceModel.iPadAir_3
        }
    }
}
