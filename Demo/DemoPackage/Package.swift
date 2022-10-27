// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "DemoPackage",
    platforms: [
        .iOS(.v13),
        .macOS(.v12),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "DemoPackage",
            targets: ["DemoPackage"]),
    ],
    dependencies: [
        .package(name: "LicenseKit", path: "../../../licensekitsource"),
    ],
    targets: [
        .target(
            name: "DemoPackage",
            dependencies: ["LicenseKit"],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "DemoPackageTests",
            dependencies: ["DemoPackage"]),
    ]
)
