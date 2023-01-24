// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Platform SDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Platform SDK",
            targets: ["Platform SDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "Adyen", url: "https://github.com/Adyen/adyen-ios", from: "5.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Platform SDK",
            dependencies: [.product(name: "Adyen", package: "Adyen")]),
        .testTarget(
            name: "Platform SDKTests",
            dependencies: ["Platform SDK"]),
    ]
)
