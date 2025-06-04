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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/1.3.0_binary/LicenseKit.zip",
            checksum: "6c9d90e04e9af0270edadb97b7b2b8fda24c178ed73791835811753cd80e7216"
        )
    ]
)
