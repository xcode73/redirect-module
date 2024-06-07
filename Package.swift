// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "redirect-module",
    platforms: [
       .macOS(.v12),
    ],
    products: [
        .library(name: "RedirectModule", targets: ["RedirectModule"]),
    ],
    dependencies: [
        .package(path: "../feather-core"),
//        .package(url: "git@github.com:xcode73/feather-core.git", branch: "main")
    ],
    targets: [
        .target(name: "RedirectApi", dependencies: [
            .product(name: "FeatherCoreApi", package: "feather-core"),
        ]),
        .target(name: "RedirectModule", dependencies: [
            .product(name: "FeatherCore", package: "feather-core"),
            .target(name: "RedirectApi"),
        ],
        resources: [
//            .copy("Bundle"),
        ]),
    ]
)
