// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MaliciousActor",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MaliciousActor",
            targets: ["MaliciousActor", "RemoteBinaryMaliciousActor"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "MaliciousActor",
            dependencies: []),
        .binaryTarget(
            name: "RemoteBinaryMaliciousActor",
            url: "https://github.com/bavarskis/maliciousActor/blob/main/MaliciousActor.xcframework.zip",
            checksum: "432e4e157396fd9ed0ac5234392c4d9dfe9bb490cc6bcc91e030a22fbecef6b3"
        )
    ]
)
