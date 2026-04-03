// swift-tools-version: 5.9
import PackageDescription

let version = "0.0.0"
let checksum = "0000000000000000000000000000000000000000000000000000000000000000"

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
