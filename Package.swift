// swift-tools-version: 5.9
import PackageDescription

let version = "3.0.0"
let checksum = "4f2d037eb95b670a67aed724c6f27da8ae3f7754d42e22fbc44ec09155763f8e"

let package = Package(
    name: "AppMachina",
    platforms: [.iOS(.v14), .macOS(.v12)],
    products: [
        .library(name: "AppMachina", targets: ["AppMachina"]),
        .library(name: "AppMachinaTesting", targets: ["AppMachinaTesting"]),
    ],
    targets: [
        .target(
            name: "AppMachina",
            dependencies: ["AppMachinaCoreFFI"],
            path: "Sources/AppMachina"
        ),
        .target(
            name: "AppMachinaTesting",
            dependencies: ["AppMachina"],
            path: "Sources/AppMachinaTesting"
        ),
        .binaryTarget(
            name: "AppMachinaCoreFFI",
            url: "https://github.com/AppMachina/appmachina-sdk-ios/releases/download/\(version)/AppMachinaCoreFFI.xcframework.zip",
            checksum: checksum
        ),
    ]
)
