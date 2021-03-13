// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "ErrorHandler",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
        .watchOS(.v3),
        .tvOS(.v10)
    ],
    products: [
        .library(
            name: "ErrorHandler",
            targets: ["ErrorHandler"]),
        .library(
            name: "ErrorHandlerAlamofire",
            targets: ["ErrorHandler", "ErrorHandlerAlamofire"]),
    ],
    dependencies: [
         .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .target(name: "ErrorHandler", dependencies: [], path: "./ErrorHandler/CLasses/Core"),
        .target(name: "ErrorHandlerAlamofire", dependencies: ["Alamofire"], path: "./ErrorHandler/Classes/Alamofire"),
        .testTarget(name: "ErrorHandlerTests", dependencies: ["ErrorHandler", "ErrorHandlerAlamofire"], path: "./Example/Tests")
    ],
    swiftLanguageVersions: [.v4_2, .v5]
)
