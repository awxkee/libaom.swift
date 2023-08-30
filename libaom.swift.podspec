#
#  Be sure to run `pod spec lint libaom.swift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "libaom.swift"
  spec.version      = "1.0.3"
  spec.summary      = "Prebuilt binaries for libaom"
  spec.description  = "Simple provider for libaom for iOS with prebuild binaries"
  spec.homepage     = 'https://github.com/awxkee/libaom.swift'
  spec.license      = { :type => "CC0-1.0", :file => "LICENSE" }
  spec.author       = { 'Radzivon Bartoshyk' => 'radzivon.bartoshyk@proton.me' }
  spec.source       = { :git => "https://github.com/awxkee/libaom.swift.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = '13.0'
  spec.osx.deployment_target = '11.0'
  spec.watchos.deployment_target = '6.0'
  spec.tvos.deployment_target = '11.0'
  spec.source_files  = "Sources/libaom/libaom.xcframework/ios-arm64/Headers/**/*.h"
  spec.public_header_files = "Sources/libaom/libaom.xcframework/ios-arm64/Headers/**/*.h"
  spec.vendored_frameworks = 'Sources/libaom/libaom.xcframework'
  spec.preserve_paths = 'Sources/libaom/libaom.xcframework', 'Sources/libaom/libaom.xcframework/ios-arm64/Headers'
  spec.pod_target_xcconfig = {
      'OTHER_CXXFLAGS' => '$(inherited) -std=c++20',
      'HEADER_SEARCH_PATHS' => '$(inherited) "$(PODS_TARGET_SRCROOT)/Sources/libaom/libaom.xcframework/ios-arm64/Headers"',
      'EXCLUDED_ARCHS[sdk=watchsimulator*]' => 'i386'
  }
  spec.libraries = 'c++'
  spec.requires_arc = true
end
