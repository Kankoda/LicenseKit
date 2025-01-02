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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/1.0.0_binary/LicenseKit.zip",
            checksum: "f093935b7acfa1ddb5cbb7cbbba0c48b5dc3c321710acdbbb60c06be897932c7"
        )
    ]
)
