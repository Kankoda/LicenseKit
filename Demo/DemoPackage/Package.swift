// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "DemoPackage",
    platforms: [
        .iOS(.v15),
        .macOS(.v13),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "DemoPackage",
            targets: ["DemoPackage"]),
    ],
    dependencies: [
        //.package(name: "LicenseKit", path: "../../"),
        //.package(name: "LicenseKit", path: "../../licensekitsource"),
        .package(url: "https://github.com/LicenseKit/LicenseKit", .upToNextMajor(from: "0.7.0"))
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
