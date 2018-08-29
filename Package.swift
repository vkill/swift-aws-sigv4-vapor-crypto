// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "AwsSigv4VaporCrypto",
    products: [
        .library(name: "AwsSigv4VaporCrypto", targets: ["AwsSigv4VaporCrypto"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vkill/swift-aws-sigv4.git", .branch("master")),
        .package(url: "https://github.com/vapor/crypto.git", from: "3.0.0"),
    ],
    targets: [
        .target(name: "AwsSigv4VaporCrypto", dependencies: ["AwsSigv4", "Crypto"]),
        .testTarget(name: "AwsSigv4VaporCryptoTests", dependencies: ["AwsSigv4VaporCrypto"]),
    ]
)
