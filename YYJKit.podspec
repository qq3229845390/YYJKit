#
#  Be sure to run `pod spec lint YYJKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "YYJKit"
  spec.version      = "1.0.2"
  spec.summary      = "自用库"
  spec.homepage     = "https://github.com/qq3229845390/YYJKit"
  spec.license      = "MIT"
  spec.author             = { "杨英俊" => "3229845390@qq.com" }
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/qq3229845390/YYJKit.git", :tag => "#{s.version}" }
  spec.source_files  = "YYJKit"
  spec.requires_arc = true
end
