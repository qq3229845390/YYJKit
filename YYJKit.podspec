#
#  Be sure to run `pod spec lint YYJKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "YYJKit"
  s.version      = "1.0.3"
  s.summary      = "自用库"
  s.homepage     = "https://github.com/qq3229845390/YYJKit"
  s.license      = "MIT"
  s.author             = { "杨英俊" => "3229845390@qq.com" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/qq3229845390/YYJKit.git", :tag => s.version }
  s.source_files  = 'YYJKit/*.{h,m}'
  s.requires_arc = true
end
