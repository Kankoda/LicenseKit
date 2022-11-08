// swift-tools-version:5.6

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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.3.0_binary/LicenseKit.zip",
            checksum: "5dd9277e1e5381f01332b4328c3d184e8ca60b7ee0e96a2a95d1e5e0b626a5c1")
    ]
)
