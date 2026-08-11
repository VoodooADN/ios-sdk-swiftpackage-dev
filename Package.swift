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
    static var voodooADNURL: String { "https://framework.voodoo-adn-dev.com/iOS/sdk/3.18.0-adxp2242.1/VoodooAdn.zip"}
    static var voodooADNChecksum: String { "f01519a0050e3ee18e113c7cbb8c4283ce3a2a8e03518f36dce1b977e1bf808f" }
    static var voodooADNName: String { "VoodooAdn" }
    static var OMSDKVoodooURL: String { "https://framework.voodoo-adn.com/omsdk/ios/1.6.1/OMSDK_Voodooio.zip"}
    static var OMSDKVoodooChecksum: String { "5a6b2c676db6ee8cc9d7afc320bc16a10268c65bf27987ab2c60dd4fbc5a141e" }
    static var OMSDKVoodooName: String { "OMSDK_Voodooio" }
}
