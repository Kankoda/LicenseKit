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
            url: "https://github.com/Kankoda/LicenseKit-Binaries/releases/download/2.0.0/LicenseKit.xcframework.zip",
            checksum: "a16052b2585ef6342163a4d1861d04a534f1e54026c3ffb7efe52bf880fef43e"
        )
    ]
)
