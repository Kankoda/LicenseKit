// swift-tools-version:5.8

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
            targets: ["LicenseKit"])
    ],
    targets: [
        .binaryTarget(
            name: "LicenseKit",
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.9.0_binary/LicenseKit.zip",
            checksum: "88fcdaed4d1295597505ce5bcaa315cb6d5b7e380201610ae33e127a8ab15e7c")
    ]
)
