// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "AwsSigv4VaporCrypto",
    products: [
        .library(name: "AwsSigv4VaporCrypto", targets: ["AwsSigv4VaporCrypto"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vkill/swift-aws-sigv4.git", from: "0.2.0"),
        .package(url: "https://github.com/vapor/crypto-kit.git", from: "4.0.0-alpha"),
    ],
    targets: [
        .target(name: "AwsSigv4VaporCrypto", dependencies: ["AwsSigv4", "CryptoKit"]),
        .testTarget(name: "AwsSigv4VaporCryptoTests", dependencies: ["AwsSigv4VaporCrypto"]),
    ]
)
