//
//  Protocol.swift
//  AppleDeviceModel
//
//  Created by Chen on 2020/9/10.
//

import Foundation

protocol DeviceModelProtocol {
    var modelName: String { get }
    var screenSize: ScreenSize { get }
}

protocol DeviceIdentifierProtocol {
    var modelName: String { get }
    var model: DeviceModelProtocol { get }
}
