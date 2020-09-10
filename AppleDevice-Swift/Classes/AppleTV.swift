//
//  AppleTV.swift
//  AppleDevice-Swift-iOS
//
//  Created by Chen on 2020/9/10.
//

import Foundation

enum AppleTVDeviceModel: String, DeviceModelProtocol {
    case tv_Simulator = "Apple TV Simulator"
    case tv_2 = "Apple TV 2"
    case tv_3 = "Apple TV 3"
    case tv_3_2013 = "Apple TV 3 2013"
    case tv_4 = "Apple TV 4"
    case tv_4k = "Apple TV 4K"

    var modelName: String {
        return rawValue
    }

    var screenSize: ScreenSize {
        return .unknow
    }
}

enum AppleTVDeviceIdentifier: String, DeviceIdentifierProtocol {
    case tv_Simulator = "x86_64"

    case appleTV2_1 = "Apple TV 2"
    case appleTV3_1 = "Apple TV 3"
    case appleTV3_2 = "Apple TV 3 2013"
    case appleTV5_3 = "Apple TV 4"
    case appleTV6_2 = "Apple TV 4K"

    var modelName: String {
        switch self {
        case .tv_Simulator:
            return AppleTVDeviceModel.tv_Simulator.modelName
        case .appleTV2_1:
            return "Apple TV 2"
        case .appleTV3_1:
            return "Apple TV 3"
        case .appleTV3_2:
            return "Apple TV 3 (2013)"
        case .appleTV5_3:
            return "Apple TV 4"
        case .appleTV6_2:
            return "Apple TV 4K"
        }
    }

    var model: DeviceModelProtocol {
        switch self {
        case .tv_Simulator:
            return AppleTVDeviceModel.tv_Simulator
        case .appleTV2_1:
            return AppleTVDeviceModel.tv_2
        case .appleTV3_1:
            return AppleTVDeviceModel.tv_3
        case .appleTV3_2:
            return AppleTVDeviceModel.tv_3_2013
        case .appleTV5_3:
            return AppleTVDeviceModel.tv_4
        case .appleTV6_2:
            return AppleTVDeviceModel.tv_4k
        }
    }
}
