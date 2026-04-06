// swift-tools-version: 5.9
import PackageDescription

let version = "3.0.2"
let checksum = "f307776f0135e13445daa5ce0e4cd2746bc41b58913c6b71c025f79dea1e5590"

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
