// swift-tools-version:5.7

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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.8.1_binary/LicenseKit.zip",
            checksum: "cbf2972bfab2fd4ee489b01a0bd4c978d44d4775a7c6378b57b897b7b8d33e6b")
    ]
)
