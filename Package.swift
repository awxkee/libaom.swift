// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libaom",
    platforms: [.iOS(.v11), .macOS(.v12), .macCatalyst(.v14), .watchOS(.v5), .tvOS(.v11)],
    products: [
        .library(
            name: "libaom",
            targets: ["libaom"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "libaom",
            path: "Sources/libaom/libaom.xcframework"),
        .testTarget(
            name: "libaom.swiftTests",
            dependencies: ["libaom"]),
    ]
)
