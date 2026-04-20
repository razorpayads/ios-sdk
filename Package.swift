// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "RazorpayAdsSdk",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "RazorpayAdsSdk",
            targets: ["RazorpayAdsSdk"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "RazorpayAdsSdk",
            path: "Frameworks/RazorpayAdsSdk.xcframework"
        ),
    ]
)
