//
//  iPhone.swift
//  AppleDeviceModel
//
//  Created by Chen on 2020/9/9.
//

import Foundation

enum iPhoneDeviceModel: String, DeviceModelProtocol {
    case iPhone_Simulator = "x86_64"
    case iPhone_2G = "iPhone 2G"
    case iPhone_3G = "iPhone 3G"
    case iPhone_3GS = "iPhone 3GS"
    case iPhone_4 = "iPhone 4"
    case iPhone_4s = "iPhone 4S"
    case iPhone_5 = "iPhone 5"
    case iPhone_5c = "iPhone 5c"
    case iPhone_5s = "iPhone 5s"
    case iPhone_6 = "iPhone 6"
    case iPhone_6_Plus = "iPhone 6 Plus"
    case iPhone_6s = "iPhone 6s"
    case iPhone_6s_Plus = "iPhone 6s Plus"
    case iPhone_se = "iPhone SE"
    case iPhone_7 = "iPhone 7"
    case iPhone_7_Plus = "iPhone 7 Plus"
    case iPhone_8 = "iPhone 8"
    case iPhone_8_Plus = "iPhone 8 Plus"
    case iPhone_X = "iPhone X"
    case iPhone_XR = "iPhone XR"
    case iPhone_XS = "iPhone XS"
    case iPhone_XS_Max = "iPhone XS Max"
    case iPhone_11 = "iPhone 11"
    case iPhone_11_Pro = "iPhone 11 Pro"
    case iPhone_11_Pro_Max = "iPhone 11 Pro Max"
    case iPhone_SE_2 = "iPhone SE (2nd generation)"

    var modelName: String {
        return rawValue
    }

    var screenSize: ScreenSize {
        switch self {
        case .iPhone_Simulator:
            return .unknow
        case .iPhone_2G, .iPhone_3G, .iPhone_3GS, .iPhone_4, .iPhone_4s:
            return .inch3dot5
        case .iPhone_5, .iPhone_5c, .iPhone_5s, .iPhone_se, .iPhone_SE_2:
            return .inch4
        case .iPhone_6, .iPhone_6s, .iPhone_7, .iPhone_8:
            return .inch4dot7
        case .iPhone_6_Plus, .iPhone_6s_Plus, .iPhone_7_Plus, .iPhone_8_Plus:
            return .inch5dot5
        case .iPhone_X, .iPhone_XS, .iPhone_11_Pro:
            return .inch5dot8
        case .iPhone_XR, .iPhone_11:
            return .inch6dot1
        case .iPhone_XS_Max, .iPhone_11_Pro_Max:
            return .inch6dot5
        }
    }
}

enum iPhoneDeviceIdentifier: String, DeviceIdentifierProtocol {
    case iPhone_Simulator = "x86_64"
    case iPhone1_1 = "iPhone1,1"
    case iPhone1_2 = "iPhone1,2"
    case iPhone2_1 = "iPhone2,1"
    case iPhone3_1 = "iPhone3,1"
    case iPhone3_2 = "iPhone3,2"
    case iPhone3_3 = "iPhone3,3"
    case iPhone4_1 = "iPhone4,1"
    case iPhone5_1 = "iPhone5,1"
    case iPhone5_2 = "iPhone5,2"
    case iPhone5_3 = "iPhone5,3"
    case iPhone5_4 = "iPhone5,4"
    case iPhone6_1 = "iPhone6,1"
    case iPhone6_2 = "iPhone6,2"
    case iPhone7_1 = "iPhone7,1"
    case iPhone7_2 = "iPhone7,2"
    case iPhone8_1 = "iPhone8,1"
    case iPhone8_2 = "iPhone8,2"
    case iPhone8_4 = "iPhone8,4"
    case iPhone9_1 = "iPhone9,1"
    case iPhone9_2 = "iPhone9,2"
    case iPhone9_3 = "iPhone9,3"
    case iPhone9_4 = "iPhone9,4"
    case iPhone10_1 = "iPhone10,1"
    case iPhone10_2 = "iPhone10,2"
    case iPhone10_3 = "iPhone10,3"
    case iPhone10_4 = "iPhone10,4"
    case iPhone10_5 = "iPhone10,5"
    case iPhone10_6 = "iPhone10,6"
    case iPhone11_2 = "iPhone11,2"
    case iPhone11_4 = "iPhone11,4"
    case iPhone11_6 = "iPhone11,6"
    case iPhone11_8 = "iPhone11,8"
    case iPhone12_1 = "iPhone12,1"
    case iPhone12_3 = "iPhone12,3"
    case iPhone12_5 = "iPhone12,5"
    case iPhone12_8 = "iPhone12,8"

    var modelName: String {
        switch self {
        case .iPhone_Simulator:
            return "iPhone Simulator"
        case .iPhone1_1:
            return "iPhone 2G"
        case .iPhone1_2:
            return "iPhone 3G"
        case .iPhone2_1:
            return "iPhone 3GS"
        case .iPhone3_1:
            return "iPhone 4 (GSM)"
        case .iPhone3_2:
            return "iPhone 4 (GSM / 2012)"
        case .iPhone3_3:
            return "iPhone 4 (CDMA)"
        case .iPhone4_1:
            return "iPhone 4S"
        case .iPhone5_1:
            return "iPhone 5 (GSM)"
        case .iPhone5_2:
            return "iPhone 5 (Global)"
        case .iPhone5_3:
            return "iPhone 5c (GSM)"
        case .iPhone5_4:
            return "iPhone 5c (Global)"
        case .iPhone6_1:
            return "iPhone 5s (GSM)"
        case .iPhone6_2:
            return "iPhone 5s (Global)"
        case .iPhone7_1:
            return "iPhone 6 Plus"
        case .iPhone7_2:
            return "iPhone 6"
        case .iPhone8_1:
            return "iPhone 6s"
        case .iPhone8_2:
            return "iPhone 6s Plus"
        case .iPhone8_4:
            return "iPhone SE"
        case .iPhone9_1:
            return "iPhone 7 (Global)"
        case .iPhone9_2:
            return "iPhone 7 Plus (Global)"
        case .iPhone9_3:
            return "iPhone 7 (GSM)"
        case .iPhone9_4:
            return "iPhone 7 Plus (GSM)"
        case .iPhone10_1:
            return "iPhone 8 (Global)"
        case .iPhone10_2:
            return "iPhone 8 Plus (Global)"
        case .iPhone10_3:
            return "iPhone X (Global)"
        case .iPhone10_4:
            return "iPhone 8 (GSM)"
        case .iPhone10_5:
            return "iPhone 8 Plus (GSM)"
        case .iPhone10_6:
            return "iPhone X (GSM)"
        case .iPhone11_2:
            return "iPhone XS"
        case .iPhone11_4:
            return "iPhone XS Max (China)"
        case .iPhone11_6:
            return "iPhone XS Max"
        case .iPhone11_8:
            return "iPhone XR"
        case .iPhone12_1:
            return "iPhone 11"
        case .iPhone12_3:
            return "iPhone 11 Pro"
        case .iPhone12_5:
            return "iPhone 11 Pro Max"
        case .iPhone12_8:
            return "iPhone SE (2020)"
        }
    }

    var model: DeviceModelProtocol {
        switch self {
        case .iPhone_Simulator:
            return iPhoneDeviceModel.iPhone_Simulator
        case .iPhone1_1:
            return iPhoneDeviceModel.iPhone_2G
        case .iPhone1_2:
            return iPhoneDeviceModel.iPhone_3G
        case .iPhone2_1:
            return iPhoneDeviceModel.iPhone_3GS
        case .iPhone3_1, .iPhone3_2, .iPhone3_3:
            return iPhoneDeviceModel.iPhone_4
        case .iPhone4_1:
            return iPhoneDeviceModel.iPhone_4s
        case .iPhone5_1, .iPhone5_2:
            return iPhoneDeviceModel.iPhone_5
        case .iPhone5_3, .iPhone5_4:
            return iPhoneDeviceModel.iPhone_5c
        case .iPhone6_1, .iPhone6_2:
            return iPhoneDeviceModel.iPhone_5s
        case .iPhone7_1:
            return iPhoneDeviceModel.iPhone_6_Plus
        case .iPhone7_2:
            return iPhoneDeviceModel.iPhone_6
        case .iPhone8_1:
            return iPhoneDeviceModel.iPhone_6s
        case .iPhone8_2:
            return iPhoneDeviceModel.iPhone_6s_Plus
        case .iPhone8_4:
            return iPhoneDeviceModel.iPhone_se
        case .iPhone9_1, .iPhone9_3:
            return iPhoneDeviceModel.iPhone_7
        case .iPhone9_2, .iPhone9_4:
            return iPhoneDeviceModel.iPhone_7_Plus
        case .iPhone10_1, .iPhone10_4:
            return iPhoneDeviceModel.iPhone_8
        case .iPhone10_2, .iPhone10_5:
            return iPhoneDeviceModel.iPhone_8_Plus
        case .iPhone10_3, .iPhone10_6:
            return iPhoneDeviceModel.iPhone_X
        case .iPhone11_2:
            return iPhoneDeviceModel.iPhone_XS
        case .iPhone11_4, .iPhone11_6:
            return iPhoneDeviceModel.iPhone_XS_Max
        case .iPhone11_8:
            return iPhoneDeviceModel.iPhone_XR
        case .iPhone12_1:
            return iPhoneDeviceModel.iPhone_11
        case .iPhone12_3:
            return iPhoneDeviceModel.iPhone_11_Pro
        case .iPhone12_5:
            return iPhoneDeviceModel.iPhone_11_Pro_Max
        case .iPhone12_8:
            return iPhoneDeviceModel.iPhone_SE_2
        }
    }
}
