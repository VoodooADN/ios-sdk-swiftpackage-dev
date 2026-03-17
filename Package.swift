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
            targets: [Constants.OMSDKVoodooName]),
        .library(
        name: Constants.OMSDKIabtechlabName,
        targets: [Constants.OMSDKIabtechlabName])
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
        ),
        .binaryTarget(
            name: Constants.OMSDKIabtechlabName,
            url: Constants.OMSDKIabtechlabURL,
            checksum: Constants.OMSDKIabtechlabName
        )
    ]
)

enum Constants {
    static var voodooADNURL: String { "https://framework.voodoo-adn-dev.com/iOS/sdk/3.15.6-OMID3/VoodooAdn.zip"}
    static var voodooADNChecksum: String { "7fea4a713639eeddf62c749aeee4bf6d7f8a8bbd90e8dc973ba9f3f62130f6c5" }
    static var voodooADNName: String { "VoodooAdn" }
    static var OMSDKVoodooURL: String { "https://framework.voodoo-adn.com/omsdk/ios/1.6.1/OMSDK_Voodooio.zip"}
    static var OMSDKVoodooChecksum: String { "5a6b2c676db6ee8cc9d7afc320bc16a10268c65bf27987ab2c60dd4fbc5a141e" }
    static var OMSDKVoodooName: String { "OMSDK_Voodooio" }
    static var OMSDKIabtechlabURL: String { "https://framework.voodoo-adn-dev.com/omsdk/ios/1.6.4-IAB/OMSDK_Iabtechlab.zip" }
    static var OMSDKIabtechlabChecksum: String { "9349cea38345927ce6a6936f6f78af274e3e0c2a95e2d80fb03df67e35fd02b4" }
    static var OMSDKIabtechlabName: String { "OMSDK_Iabtechlab" }
}
