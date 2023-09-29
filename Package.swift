// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "LicenseKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v12),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "LicenseKit",
            targets: ["LicenseKit"])
    ],
    targets: [
        .binaryTarget(
            name: "LicenseKit",
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.6.0_binary/LicenseKit.zip",
            checksum: "6827319ee0600df2dd40cc867bb8dd18a938c329f2be87225b92c85ca8d23ff4")
    ]
)
