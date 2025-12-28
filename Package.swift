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
            url: "https://github.com/Kankoda/LicenseKit-Binaries/releases/download/2.1.0/LicenseKit-multiplatform.zip",
            checksum: "1e8e791813dc4822a46e5a73bf24831cefc8c3dcdc4ca00c55506cc89dae1a52"
        )
    ]
)
