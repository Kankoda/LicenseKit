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
            url: "https://github.com/Kankoda/LicenseKit-Binaries/releases/download/2.3.1/LicenseKit.zip",
            checksum: "495c759a2066b545eb76858ec3b6fcb9e2714304ee3d63443be1ec9874fd7f0e"
        )
    ]
)
