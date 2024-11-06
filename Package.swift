// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SideBarKit",
    platforms: [
      .macOS(.v14),
      .iOS(.v17)
    ],
    products: [
        .library(
            name: "SideBarKit",
            targets: ["SideBarKit"])
    ],
    dependencies: [
      .package(url: "https://github.com/sentryco/HybridColor", branch: "main")
    ],
    targets: [
      .target(
         name: "SideBarKit",
         dependencies: [
            .product(name: "HybridColor", package: "HybridColor")
         ]),
      .testTarget(
         name: "SideBarKitTests",
         dependencies: ["SideBarKit"])
    ]
)
