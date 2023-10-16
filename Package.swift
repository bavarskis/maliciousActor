// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MaliciousPackage",
    products: [
        .library(
            name: "MaliciousPackage",
            targets: [ "MaliciousBinary"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "MaliciousBinary",
                      url: "https://github.com/bavarskis/maliciousActor/blob/main/MaliciousActor.xcframework.zip",
                      checksum: "6e4a245eed65ad37bc1e82eaea9c5b07ea5bc1a8b35d1207b87e9a7ac7eb532a")
    ]
)
