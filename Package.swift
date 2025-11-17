// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "LicenseKit",
    platforms: [
        .iOS(.v15),
        .macOS(.v13),
        .tvOS(.v15),
        .watchOS(.v8)
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
            url: "https://github.com/Kankoda/LicenseKit-Binaries/releases/download/2.0.1/LicenseKit.zip",
            checksum: "a6130defa8376d8384feeaf88ac0c188dd4c131a2b5d5b3466949d055f3d96b2"
        )
    ]
)
