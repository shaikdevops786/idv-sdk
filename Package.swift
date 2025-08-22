// swift-tools-version: 5.7
import PackageDescription

let package = Package(
  name: "idv-sdk",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "nfcPassportIdSdk", targets: ["nfcPassportIdSdk"])
  ],
  targets: [
    .binaryTarget(
      name: "nfcPassportIdSdk",
      url: "https://github.com/shaikdevops786/idv-sdk/releases/download/1.0.1/nfcPassportIdSdk.xcframework.zip",
      checksum: "5c1e5dd704e901c9ba0ee5a69c5aecdfede86efcac52b9c2a8bebd4e67d7d6de"
    )
  ]
)
