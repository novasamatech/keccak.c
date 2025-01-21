// swift-tools-version: 6.0
import PackageDescription

let name = "keccak"

let package = Package(
    name: name,
    products: [
        .library(
            name: name,
            targets: [name]
        ),
    ],
    targets: [
        .target(
            name: name,
            path: "keccak"
        )
    ]
)
