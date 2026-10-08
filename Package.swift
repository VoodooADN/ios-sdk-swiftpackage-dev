// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: Constants.voodooADNName,
    platforms: [.iOS("15.0")],
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
    static var voodooADNURL: String { "https://framework.voodoo-adn-dev.com/iOS/sdk/4.31.0-adxp36611/VoodooAdn.zip"}
    static var voodooADNChecksum: String { "8a882510e1ab7d99977f55811596a2de9dc6e511b1310481f57f98dd4fd92d04" }
    static var voodooADNName: String { "VoodooAdn" }
    static var OMSDKVoodooURL: String { "https://framework.voodoo-adn.com/omsdk/ios/1.6.9/OMSDK_Voodooio.zip"}
    static var OMSDKVoodooChecksum: String { "65d1c22f6e80e87d5ec38fdcfd0147e0dcae65ee571063d454a19a27b328a319" }
    static var OMSDKVoodooName: String { "OMSDK_Voodooio" }
}
