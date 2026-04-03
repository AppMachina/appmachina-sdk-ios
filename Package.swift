// swift-tools-version: 5.9
import PackageDescription

let version = "3.0.1"
let checksum = "00e73f9285fd752002140302f7569b38cd22ab38c01207881fd086f100913555"

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
