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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.4.0_binary/LicenseKit.zip",
            checksum: "5cb04ff4200cdd3521fc38c13ffdbded6354e3c58cea47030c899788d541f013")
    ]
)
