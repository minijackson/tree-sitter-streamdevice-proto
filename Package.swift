// swift-tools-version:5.3

import Foundation
import PackageDescription

var sources = ["src/parser.c"]
if FileManager.default.fileExists(atPath: "src/scanner.c") {
    sources.append("src/scanner.c")
}

let package = Package(
    name: "TreeSitterStreamdeviceProto",
    products: [
        .library(name: "TreeSitterStreamdeviceProto", targets: ["TreeSitterStreamdeviceProto"]),
    ],
    dependencies: [
        .package(name: "SwiftTreeSitter", url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterStreamdeviceProto",
            dependencies: [],
            path: ".",
            sources: sources,
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterStreamdeviceProtoTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterStreamdeviceProto",
            ],
            path: "bindings/swift/TreeSitterStreamdeviceProtoTests"
        )
    ],
    cLanguageStandard: .c11
)
