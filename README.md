# Razorpay Ads SDK for iOS

`RazorpayAdsSdk` is the white-labeled iOS SDK package for integrating Razorpay Ads into an iOS application.

## Requirements

- iOS 13.0+
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
    :tag => "1.4.0"
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

The binary package version published from this repo is `1.4.0`.
