// swift-tools-version:5.9

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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.9.1_binary/LicenseKit.zip",
            checksum: "bbf37953c411ccd71620986d34e5d368c8a903022c34ee0e7a556fa941a87575"
        )
    ]
)
