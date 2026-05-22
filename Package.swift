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
    static var voodooADNURL: String { "https://framework.voodoo-adn-dev.com/iOS/sdk/3.16.4-OMID166/VoodooAdn.zip"}
    static var voodooADNChecksum: String { "700700678bc667cb35ca2081ff626cc3423b4fbf24859373dad37eba82a982e4" }
    static var voodooADNName: String { "VoodooAdn" }
    static var OMSDKVoodooURL: String { "https://framework.voodoo-adn-dev.com/omsdk/ios/1.6.6/OMSDK_Voodooio.zip"}
    static var OMSDKVoodooChecksum: String { "8e2d5ca9774ff3c3e50c291daa42b6ec403a479b7600b42bf751b74f6ef28ad7" }
    static var OMSDKVoodooName: String { "OMSDK_Voodooio" }
}
