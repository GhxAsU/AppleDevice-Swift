//
//  AppleWatch.swift
//  AppleDevice-Swift-iOS
//
//  Created by Chen on 2020/9/10.
//

import Foundation

enum AppleWatchDeviceModel: String, DeviceModelProtocol {
    case watch_Simulator = "Apple Watch Simulator"
    case watch_38mm = "Apple Watch (38mm)"
    case watch_42mm = "Apple Watch (42mm)"
    case watch_s1_38mm = "Apple Watch Series 1 (38mm)"
    case watch_s1_42mm = "Apple Watch Series 1 (42mm)"
    case watch_s2_38mm = "Apple Watch Series 2 (38mm)"
    case watch_s2_42mm = "Apple Watch Series 2 (42mm)"
    case watch_s3_38mm = "Apple Watch Series 3 (38mm)"
    case watch_s3_42mm = "Apple Watch Series 3 (42mm)"
    case watch_s4_40mm = "Apple Watch Series 4 (40mm)"
    case watch_s4_44mm = "Apple Watch Series 4 (44mm)"
    case watch_s5_40mm = "Apple Watch Series 5 (40mm)"
    case watch_s5_44mm = "Apple Watch Series 5 (44mm)"

    var modelName: String {
        return rawValue
    }

    var screenSize: ScreenSize {
        switch self {
        case .watch_Simulator:
            return .unknow
        case .watch_38mm, .watch_s1_38mm, .watch_s2_38mm, .watch_s3_38mm:
            return .mm38
        case .watch_s4_40mm, .watch_s5_40mm:
            return .mm40
        case .watch_42mm, .watch_s1_42mm, .watch_s2_42mm, .watch_s3_42mm:
            return .mm42
        case .watch_s4_44mm, .watch_s5_44mm:
            return .mm44
        }
    }
}

enum AppleWatchDeviceIdentifier: String, DeviceIdentifierProtocol {
    case watch_Simulator = "x86_64"

    case watch1_1 = "Watch1,1"
    case watch1_2 = "Watch1,2"
    case watch2_6 = "Watch2,6"
    case watch2_7 = "Watch2,7"
    case watch2_3 = "Watch2,3"
    case watch2_4 = "Watch2,4"
    case watch3_1 = "Watch3,1"
    case watch3_2 = "Watch3,2"
    case watch3_3 = "Watch3,3"
    case watch3_4 = "Watch3,4"
    case watch4_1 = "Watch4,1"
    case watch4_2 = "Watch4,2"
    case watch4_3 = "Watch4,3"
    case watch4_4 = "Watch4,4"
    case watch5_1 = "Watch5,1"
    case watch5_2 = "Watch5,2"
    case watch5_3 = "Watch5,3"
    case watch5_4 = "Watch5,4"

    var modelName: String {
        switch self {
        case .watch_Simulator:
            return AppleWatchDeviceModel.watch_Simulator.modelName
        case .watch1_1:
            return "Apple Watch (38mm)"
        case .watch1_2:
            return "Apple Watch (42mm)"
        case .watch2_6:
            return "Apple Watch Series 1 (38mm)"
        case .watch2_7:
            return "Apple Watch Series 1 (42mm)"
        case .watch2_3:
            return "Apple Watch Series 2 (38mm)"
        case .watch2_4:
            return "Apple Watch Series 2 (42mm)"
        case .watch3_1:
            return "Apple Watch Series 3 (38mm, LTE)"
        case .watch3_2:
            return "Apple Watch Series 3 (42mm, LTE)"
        case .watch3_3:
            return "Apple Watch Series 3 (38mm)"
        case .watch3_4:
            return "Apple Watch Series 3 (42mm)"
        case .watch4_1:
            return "Apple Watch Series 4 (40mm)"
        case .watch4_2:
            return "Apple Watch Series 4 (44mm)"
        case .watch4_3:
            return "Apple Watch Series 4 (40mm, LTE)"
        case .watch4_4:
            return "Apple Watch Series 4 (44mm, LTE)"
        case .watch5_1:
            return "Apple Watch Series 5 (40mm)"
        case .watch5_2:
            return "Apple Watch Series 5 (44mm)"
        case .watch5_3:
            return "Apple Watch Series 5 (40mm, LTE)"
        case .watch5_4:
            return "Apple Watch Series 5 (44mm, LTE)"
        }
    }

    var model: DeviceModelProtocol {
        switch self {
        case .watch_Simulator:
            return AppleWatchDeviceModel.watch_Simulator
        case .watch1_1:
            return AppleWatchDeviceModel.watch_38mm
        case .watch1_2:
            return AppleWatchDeviceModel.watch_42mm
        case .watch2_6:
            return AppleWatchDeviceModel.watch_s1_38mm
        case .watch2_7:
            return AppleWatchDeviceModel.watch_s1_42mm
        case .watch2_3:
            return AppleWatchDeviceModel.watch_s2_38mm
        case .watch2_4:
            return AppleWatchDeviceModel.watch_s2_42mm
        case .watch3_1, .watch3_3:
            return AppleWatchDeviceModel.watch_s3_38mm
        case .watch3_2, .watch3_4:
            return AppleWatchDeviceModel.watch_s3_42mm
        case .watch4_1, .watch4_3:
            return AppleWatchDeviceModel.watch_s4_40mm
        case .watch4_2, .watch4_4:
            return AppleWatchDeviceModel.watch_s4_44mm
        case .watch5_1, .watch5_3:
            return AppleWatchDeviceModel.watch_s5_40mm
        case .watch5_2, .watch5_4:
            return AppleWatchDeviceModel.watch_s5_44mm
        }
    }
}
