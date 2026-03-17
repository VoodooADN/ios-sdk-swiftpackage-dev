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
    static var voodooADNURL: String { "https://framework.voodoo-adn-dev.com/iOS/sdk/3.15.6-OMID1/VoodooAdn.zip"}
    static var voodooADNChecksum: String { "bca4cae7597faf047aa93e1892636984bc255b9617400e4d098ed5d445874ae0" }
    static var voodooADNName: String { "VoodooAdn" }
    static var OMSDKVoodooURL: String { "https://framework.voodoo-adn-dev.com/omsdk/ios/1.6.4/OMSDK_Voodooio.zip"}
    static var OMSDKVoodooChecksum: String { "fa3144708ee58216b8fe59e9c182003e0beec5a1dfe0efb606d1aba6f3b6b20a" }
    static var OMSDKVoodooName: String { "OMSDK_Voodooio" }
}
