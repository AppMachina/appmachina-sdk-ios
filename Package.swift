// swift-tools-version: 5.9
import PackageDescription

let version = "3.0.3"
let checksum = "8c31d9579282014e42c90c6e43c9e185dfa84071cc839768d3a7b67af3bd18e1"

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
