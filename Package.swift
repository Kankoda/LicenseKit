// swift-tools-version:6.2

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
            url: "https://github.com/Kankoda/LicenseKit-Binaries/releases/download/2.4.1/LicenseKit.zip",
            checksum: "4c89c086e8a9f6c8c3659f7e471c6c0bcde3ebf592f56227978367e6266e0cae"
        )
    ]
)
