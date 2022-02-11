// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LicenseKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
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
            url: "https://github.com/danielsaidi/Releases/releases/download/licensekit-0.1/LicenseKit.zip",
            checksum: "e1df5b0bc132a339587e4ab19e15b5cda863237d292668180739cded5b864fd3")
    ]
)
