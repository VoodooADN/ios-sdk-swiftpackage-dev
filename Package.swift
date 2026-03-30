// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: Constants.voodooADNName,
    products: [
        .library(
            name: Constants.voodooADNName,
            targets: [Constants.voodooADNName]),
        .library(
            name: Constants.OMSDKVoodooName,
            targets: [Constants.OMSDKVoodooName])
    ],
    targets: [
        .binaryTarget(
            name: Constants.voodooADNName,
            url: Constants.voodooADNURL,
            checksum: Constants.voodooADNChecksum
        ),
        .binaryTarget(
            name: Constants.OMSDKVoodooName,
            url: Constants.OMSDKVoodooURL,
            checksum: Constants.OMSDKVoodooChecksum
        )
    ]
)

enum Constants {
    static var voodooADNURL: String { "https://framework.voodoo-adn-dev.com/iOS/sdk/3.15.6-DebugOMID/VoodooAdn.zip"}
    static var voodooADNChecksum: String { "2d65547463116cc9f10ec81f91d69e8ee4f31917c7671cc622f9a26f8e633550" }
    static var voodooADNName: String { "VoodooAdn" }
    static var OMSDKVoodooURL: String { "https://framework.voodoo-adn.com/omsdk/ios/1.6.4/OMSDK_Voodooio.zip"}
    static var OMSDKVoodooChecksum: String { "263dacde76d3b211a73816e3347d0c473d63c3c860548067ebf2a99d3d251bbf" }
    static var OMSDKVoodooName: String { "OMSDK_Voodooio" }
}
