// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SideBarKit",
    platforms: [
      .macOS(.v14),
      .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SideBarKit",
            targets: ["SideBarKit"]),
    ],
    dependencies: [
      .package(url: "https://github.com/sentryco/HybridColor", branch: "main"),
    ],
    targets: [
      .target(
         name: "SideBarKit",
         dependencies: [
            .product(name: "HybridColor", package: "HybridColor"),
         ]),
      .testTarget(
         name: "SideBarKitTests",
         dependencies: ["SideBarKit"])
    ]
    
)
