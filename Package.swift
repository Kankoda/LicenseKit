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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.5.0_binary/LicenseKit.zip",
            checksum: "08d66482dd426d71c29aebf6f7cb8652a8ebd6019f46f77cc6ccb934ecb29b31")
    ]
)
