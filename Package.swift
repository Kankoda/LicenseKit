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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.9.2_binary/LicenseKit_update.zip",
            checksum: "84b3b367b10bcdabe37bb219376833eb0b335f7e3c3b9778debc8f2896a7b1a1"
        )
    ]
)
