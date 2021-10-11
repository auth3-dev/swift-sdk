// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Auth3Sdk",
    products: [
        .library(
            name: "Admin",
            targets: ["Admin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.7.0"),
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.4.0"),
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.33.0"),
    ],
    targets: [
        .target(
            name: "Admin",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "NIO", package: "swift-nio"),
            ]),
    ]
)
