// swift-tools-version:5.7

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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.8_binary/LicenseKit.zip",
            checksum: "4c8214f13c28e16283418bb5cecc39fa835cbfff63d1111e59eedca4a84810f2")
    ]
)
