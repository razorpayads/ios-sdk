Pod::Spec.new do |s|
  s.name              = "RazorpayAdsSdk"
  s.version           = "1.4.6"
  s.summary           = "Razorpay Ads SDK for iOS applications."
  s.description       = "Razorpay Ads SDK distributed as a vendored XCFramework for iOS."
  s.homepage          = "https://github.com/razorpayads/ios-sdk"
  s.license           = { :type => "MIT", :file => "LICENSE" }
  s.authors           = { "Razorpay" => "support@razorpay.com" }
  s.source            = {
    :git => "https://github.com/razorpayads/ios-sdk.git",
    :tag => s.version.to_s
  }
  s.platform          = :ios, "13.0"
  s.swift_version     = "5.0"
  s.vendored_frameworks = "Frameworks/RazorpayAdsSdk.xcframework"
end
