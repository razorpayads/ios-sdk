# Razorpay Ads SDK for iOS

`RazorpayAdsSdk` is the white-labeled iOS SDK package for integrating Razorpay Ads into an iOS application.

## Requirements

- iOS 15.0+
- Xcode with Swift Package Manager or CocoaPods support

## Installation

### Swift Package Manager

Add the package from:

```text
https://github.com/razorpayads/ios-sdk.git
```

Then add the `RazorpayAdsSdk` product to your app target.

### CocoaPods

Add this to your `Podfile`:

```ruby
pod "RazorpayAdsSdk",
    :git => "https://github.com/razorpayads/ios-sdk.git",
    :tag => "1.7.9"
```

Then run:

```bash
pod install
```

## Usage

Import the module:

```swift
import RazorpayAdsSdk
```

Initialize the SDK once during app startup:

```swift
Razorpay.sharedInstance().start { status in
    print("Razorpay Ads initialized: \(String(describing: status))")
}
```

Request an ad with `RazorpayAdLoader`:

```swift
let loader = RazorpayAdLoader()
loader.delegate = self
loader.loadAd(
    adRequestConfiguration: AdRequestConfiguration(
        placement: "your_placement_id",
        viewController: self,
        publisherProvidedId: "publisher-id",
        customTargetingValues: ["key": "value"]
    )
)
```

Example banner callback:

```swift
extension ViewController: MediationAdDelegate {
    func onBannerAdLoaded(bannerAd: MediationBannerAd) {
        guard let bannerView = bannerAd.view else { return }
        view.addSubview(bannerView)
        bannerAd.eventDelegate = self
    }

    func onAdFailedToLoad(error: AdError) {
        print(error.description ?? "Unknown ad load error")
    }
}
```

This package and its bundled XCFramework are version `1.7.9`.

Both installation methods resolve Google Mobile Ads SDK `13.2.0` automatically. Continue using `import RazorpayAdsSdk`; the SPM dependency bridge does not change the SDK API.

The default RAPI endpoint is `https://adreq.razorpayads.com/v1/rapi`. Remote configuration can override it.
