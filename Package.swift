// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "AppLog",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "AppLog",
            targets: ["AppLog"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AppLog",
            dependencies: []),
    ]
)
