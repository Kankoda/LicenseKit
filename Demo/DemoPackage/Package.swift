// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "DemoPackage",
    platforms: [
        .iOS(.v16),
        .macOS(.v14),
        .tvOS(.v16),
        .watchOS(.v10),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "DemoPackage",
            targets: ["DemoPackage"]
        )
    ],
    dependencies: [
        // .package(name: "LicenseKit", path: "../../"),
        // .package(name: "LicenseKit", path: "../../licensekitsource"),
        // .package(url: "https://github.com/LicenseKit/LicenseKit", .upToNextMajor(from: "2.1.2"))
        .package(url: "https://github.com/LicenseKit/LicenseKit", branch: "2.1.2-multiplatform")
    ],
    targets: [
        .target(
            name: "DemoPackage",
            dependencies: ["LicenseKit"],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "DemoPackageTests",
            dependencies: ["DemoPackage"]
        )
    ]
)
