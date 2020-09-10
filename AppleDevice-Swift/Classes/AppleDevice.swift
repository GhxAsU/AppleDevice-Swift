//
//  AppleDevice.swift
//  AppleDeviceModel
//
//  Created by Chen on 2020/9/10.
//

import UIKit

public struct AppleDevice {
    public static var type: DeviceType {
        let deviceType = UIDevice.current.model.lowercased()
        switch deviceType {
        case "iphone":
            return .iPhone
        case "ipad":
            return .iPad
        case "ipod touch":
            return .iPodTouch
        default:
            assert(false)
            return .unknow
        }
    }

    public static var identifier: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let mirror = Mirror(reflecting: systemInfo.machine)
        let identifier = mirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }

    static var _identifier: DeviceIdentifierProtocol? {
        switch type {
        case .iPhone:
            if let identifier = iPhoneDeviceIdentifier(rawValue: identifier) {
                return identifier
            }
        case .iPad:
            if let identifier = iPadDeviceIdentifier(rawValue: identifier) {
                return identifier
            }
        case .iPodTouch:
            if let identifier = iPodTouchDeviceIdentifier(rawValue: identifier) {
                return identifier
            }
        case .unknow:
            break
        }
        return nil
    }

    static var _model: DeviceModelProtocol? {
        return _identifier?.model
    }

    public static var model: String {
        if let model = _model {
            return model.modelName
        }
        return type.name
    }

    public static var modelByIdentifier: String {
        if let identifier = _identifier {
            return identifier.modelName
        }
        return type.name
    }

    public static var screenSize: ScreenSize {
        return _model?.screenSize ?? ScreenSize.unknow
    }
}
