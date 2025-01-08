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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/1.0.1_binary/LicenseKit.zip",
            checksum: "7c9840f89d9e35c7d7611947ce0f4590b73131ac65fb54f58062d596c89e1146"
        )
    ]
)
