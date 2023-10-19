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
            url: "https://github.com/LicenseKit/LicenseKit/releases/download/0.8_binary/LicenseKit.zip",
            checksum: "ab668ce5358478e376e1042c33dfcbf554480ea9b08e8abff543f534349df0ed")
    ]
)
