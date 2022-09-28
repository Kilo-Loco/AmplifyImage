// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "AmplifyImage",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "AmplifyImage",
            targets: ["AmplifyImage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/aws-amplify/amplify-ios", branch: "main"),
        .package(url: "https://github.com/onevcat/Kingfisher", branch: "master"),
    ],
    targets: [
        .target(
            name: "AmplifyImage",
            dependencies: [
                .product(name: "Amplify", package: "amplify-ios"),
                .product(name: "Kingfisher", package: "Kingfisher")
            ]
        ),
        .testTarget(
            name: "AmplifyImageTests",
            dependencies: ["AmplifyImage"]),
    ]
)
