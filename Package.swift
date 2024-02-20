// swift-tools-version:5.5
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
        .package(url: "https://github.com/xcode73/feather-core", .branch("test-dev")),
        .package(url: "https://github.com/xcode73/feather-objects", .branch("test-dev")),
    ],
    targets: [
        .target(name: "RedirectModule", dependencies: [
            .product(name: "Feather", package: "feather-core"),
            .product(name: "FeatherObjects", package: "feather-objects"),
        ],
        resources: [
//            .copy("Bundle"),
        ]),
    ]
)
