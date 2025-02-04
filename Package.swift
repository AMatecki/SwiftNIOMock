// swift-tools-version:4.0
//
//  Package.swift
//  SwiftNIOMock
//
//  Created by Ilya Puchka on 18/12/2018.
//
import PackageDescription

let package = Package(
    name: "SwiftNIOMock",
    products: [
        .library(name: "SwiftNIOMock", targets: ["SwiftNIOMock"]),
        ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.7.1"),
        .package(url: "https://github.com/apple/swift-nio-extras.git", from: "1.0.0"),
        ],
    targets: [
        .target(name: "SwiftNIOMock", dependencies: ["NIO", "NIOHTTP1", "NIOHTTPCompression"]),
        .testTarget(name: "SwiftNIOMockTests", dependencies: ["SwiftNIOMock"]),
    ]
)
