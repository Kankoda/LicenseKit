// swift-tools-version:5.7

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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.7.1_binary/LicenseKit.zip",
            checksum: "c6ef4e2b3715817237b2ca338042ae521605caef025bcab2646c5c58e6fe9d57")
    ]
)
