// swift-tools-version:6.1

import PackageDescription

let package = Package(
    name: "LicenseKit",
    platforms: [
        .iOS(.v16),
        .macOS(.v14),
        .tvOS(.v16),
        .watchOS(.v10),
        .visionOS(.v1)
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
            url: "https://github.com/Kankoda/LicenseKit-Binaries/releases/download/2.2.6/LicenseKit.zip",
            checksum: "42d3451c15ad372606cc09d350e4088ecc1e390a5abce1eb6766a8fe4f1423f5"
        )
    ]
)
