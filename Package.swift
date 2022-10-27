// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "LicenseKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.2.0_binary/LicenseKit.zip",
            checksum: "e902339aedf61549d4e6b7e71eff7ad04e541e29dbca636f380d3c66beaffdae")
    ]
)
