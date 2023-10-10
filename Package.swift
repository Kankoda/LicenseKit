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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.7.0_binary/LicenseKit.zip",
            checksum: "5ffd005b84aff72b53e489920ddedae39d3dfe3306384e526e7e73dcc9feae43")
    ]
)
