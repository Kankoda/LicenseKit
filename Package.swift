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
            url: "https://github.com/Kankoda/LicenseKit-Binaries/releases/download/2.2.0/LicenseKit.zip",
            checksum: "342a6f0cb88e56f19859aab5319c88cebbfce8145a432b7961c94161549e930e"
        )
    ]
)
