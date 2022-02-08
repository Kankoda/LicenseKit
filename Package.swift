// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LicenseKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LicenseKit",
            targets: ["LicenseKit"])
    ],
    targets: [
        .binaryTarget(
            name: "LicenseKit",
            path: "Sources/LicenseKit.xcframework")
    ]
)
