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
            url: "https://github.com/Kankoda/LicenseKit-Binaries/releases/download/2.1.1/LicenseKit-multiplatform.zip",
            checksum: "cc54ee0735e954dbd21a55de1f381bee7fe24ae95866515d859a1adcc8209908"
        )
    ]
)
