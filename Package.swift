// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ResponsiveTextField",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ResponsiveTextField",
            targets: ["ResponsiveTextField"]),
    ],
    dependencies: [
        .package(url: "https://github.com/oskarirauta/combine-schedulers.git", from: "1.0.5")
    ],
    targets: [
        .target(
            name: "ResponsiveTextField",
            dependencies: [
                .product(name: "CombineSchedulers", package: "combine-schedulers")
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency"),
                .enableUpcomingFeature("InferSendableFromCaptures")
            ]
        ),
    ]
)
