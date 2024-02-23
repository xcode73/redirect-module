// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "redirect-module",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "RedirectModule", targets: ["RedirectModule"])
    ],
    dependencies: [
        .package(url: "https://github.com/xcode73/feather-core.git", branch: "test-dev"),
        .package(url: "https://github.com/xcode73/redirect-objects.git", branch: "test-dev")
    ],
    targets: [
        .target(name: "RedirectModule", dependencies: [
            .product(name: "Feather", package: "feather-core"),
            .product(name: "RedirectObjects", package: "redirect-objects")
        ],
        resources: [
//            .copy("Bundle")
        ]),
    ],
    swiftLanguageVersions: [.v5]
)
