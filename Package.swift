// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EmptyDataView",
    platforms: [
        // Only add support for iOS 11 and up.
        .iOS(.v11)
    ],
    products: [
        .library(name: "EmptyDataView", targets: ["EmptyDataView"])
    ],
    targets: [
        .target(
            name: "EmptyDataView",
            dependencies: []),
        .testTarget(
            name: "EmptyDataViewTests",
            dependencies: ["EmptyDataView"]),
    ]
)
