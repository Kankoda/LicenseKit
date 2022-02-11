// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DemoPackage",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "DemoPackage",
            targets: ["DemoPackage"]),
    ],
    dependencies: [
        .package(name: "LicenseKit", path: "../../"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DemoPackage",
            dependencies: ["LicenseKit"]),
        .testTarget(
            name: "DemoPackageTests",
            dependencies: ["DemoPackage"]),
    ]
)
