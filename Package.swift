// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "LicenseKit",
    platforms: [
        .iOS(.v15),
        .macOS(.v13),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "LicenseKit",
            targets: ["LicenseKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "LicenseKit",
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/1.4.0_binary/LicenseKit.zip",
            checksum: "cdd0414bda5042355f3af37790f294f56ee1fc56296f06d611928a22ec163583"
        )
    ]
)
