// swift-tools-version:5.9
import PackageDescription
import Foundation

let package = Package(
    name: "redirect-module",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "RedirectModule", targets: ["RedirectModule"]),
    ],
    dependencies: [
        .package(url: "https://github.com/xcode73/feather-core.git", branch: "main")
    ],
    targets: [
        .target(
            name: "RedirectApi",
            dependencies: [
                .product(name: "FeatherCoreApi", package: "feather-core")
            ],
            swiftSettings: [.enableExperimentalFeature("StrictConcurrency=complete")]
        ),
        .target(
            name: "RedirectModule",
            dependencies: [
                .product(name: "FeatherCore", package: "feather-core"),
                .target(name: "RedirectApi")
            ],
            resources: [
                //            .copy("Bundle"),
            ],
            swiftSettings: [.enableExperimentalFeature("StrictConcurrency=complete")]
        ),
    ]
)
