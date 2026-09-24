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
    static var voodooADNURL: String { "https://framework.voodoo-adn-dev.com/iOS/sdk/4.31.0-rc1/VoodooAdn.zip"}
    static var voodooADNChecksum: String { "a369c76adb41e430b0d81b414dad37070b9e623368ab688621cdb4a48130a20d" }
    static var voodooADNName: String { "VoodooAdn" }
    static var OMSDKVoodooURL: String { "https://framework.voodoo-adn.com/omsdk/ios/1.6.1/OMSDK_Voodooio.zip"}
    static var OMSDKVoodooChecksum: String { "5a6b2c676db6ee8cc9d7afc320bc16a10268c65bf27987ab2c60dd4fbc5a141e" }
    static var OMSDKVoodooName: String { "OMSDK_Voodooio" }
}
