// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "leaky",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        //.Package(url: "https://github.com/GraphQLSwift/GraphQL.git", majorVersion: 0),
        .package(url: "https://github.com/lgaches/Graphiti.git", from: "0.3.2"),
        .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "1.7.9"),
        .package(url: "https://github.com/dionyself/Kitura-GraphQL.git", from: "0.0.11"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "leaky",
            dependencies: ["Kitura", "Kitura-GraphQL"]),
    ]
)
