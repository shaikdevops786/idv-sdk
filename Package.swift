// swift-tools-version: 5.7
import PackageDescription

let package = Package(
  name: "IDVSDK",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "IDVSDK", targets: ["IDVSDK"])
  ],
  targets: [
    .binaryTarget(
      name: "OpenSSL",
      url: "https://github.com/shaikdevops786/idv-sdk/releases/download/1.0.0/OpenSSL.xcframework.zip",
      checksum: "16492b581780428fd9dec91df006eb7d47480c0834683ffa7d9cb461f84de165"
    ),
    .binaryTarget(
      name: "nfcPassportIdSdk",
      url: "https://github.com/shaikdevops786/idv-sdk/releases/download/1.0.0/nfcPassportIdSdk.xcframework.zip",
      checksum: "5ac6efe3173b3158f7b427df57a427dad8d5fc333cc05f267848fa9a65f41b68"
    ),
    .target(
      name: "IDVSDK",
      dependencies: ["nfcPassportIdSdk", "OpenSSL"],
      path: "Sources/IDVSDK",
      sources: ["Stub.swift"]
    )
  ]
)
