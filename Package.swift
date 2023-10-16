// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MaliciousPackage",
    products: [
        .library(
            name: "MaliciousPackage",
            targets: [ "MaliciousBinaryLocal"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "MaliciousBinary",
                      url: "https://github.com/bavarskis/maliciousActor/blob/main/MaliciousActor.xcframework.zip",
                      checksum: "432e4e157396fd9ed0ac5234392c4d9dfe9bb490cc6bcc91e030a22fbecef6b3")
    ]
)
