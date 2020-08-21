Pod::Spec.new do |s|
  s.name         = "YYJKit"
  s.version      = "1.0.6"
  s.summary      = "自用库"
  s.homepage     = "https://github.com/qq3229845390/YYJKit"
  s.license      = "MIT"
  s.author             = { "杨英俊" => "3229845390@qq.com" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/qq3229845390/YYJKit.git", :tag => s.version }
  s.source_files  = "YYJKit/**/*.{h,m}"
  s.requires_arc = true
end
