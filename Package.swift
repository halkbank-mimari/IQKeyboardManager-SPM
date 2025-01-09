// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "IQKeyboardManager",
  platforms: [
    .iOS(.v12)
  ],
  products: [
    .library(
      name: "IQKeyboardManager",
      targets: ["IQKeyboardManager", "IQKeyboardManagerObjc"]
    ),
  ],
  targets: [
    .target(
      name: "IQKeyboardManager",
      dependencies: ["IQKeyboardManagerObjc"]
    ),
    .target(
      name: "IQKeyboardManagerObjc",
      dependencies: [],
      publicHeadersPath: "include"
    ),
    .testTarget(
      name: "IQKeyboardManagerTests",
      dependencies: ["IQKeyboardManager"]),
  ]
)
