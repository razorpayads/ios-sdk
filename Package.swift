// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "RazorpayAdsSdk",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "RazorpayAdsSdk", targets: ["RazorpayAdsSdkDependencies"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            exact: "13.2.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "RazorpayAdsSdk",
            path: "Frameworks/RazorpayAdsSdk.xcframework"
        ),
        .target(
            name: "RazorpayAdsSdkDependencies",
            dependencies: [
                "RazorpayAdsSdk",
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            linkerSettings: [
                .linkedFramework("AdSupport"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedFramework("WebKit")
            ]
        )
    ]
)
