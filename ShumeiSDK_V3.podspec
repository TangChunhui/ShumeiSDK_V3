#
# Be sure to run `pod lib lint ShumeiSDK_V3.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ShumeiSDK_V3'
  s.version          = '0.1.0'
  s.summary          = 'shumei sdk'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/TangChunhui/ShumeiSDK_V3'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TangChunhui' => '1203720671@qq.com' }
  s.source           = { :git => 'https://github.com/TangChunhui/ShumeiSDK_V3.git', :tag => s.version.to_s }

  s.platform         = :ios
  s.ios.deployment_target = '9.0'

  s.ios.public_header_files = 'Sources/include/SmAntiFraud/SmAntiFraud.h'
  s.source_files = 'Sources/include/SmAntiFraud/SmAntiFraud.h'
  s.frameworks = 'SystemConfiguration', 'Security', 'AdSupport', 'CoreMotion', 'CoreLocation'
  s.libraries = 'resolv', 'z', 'sqlite3.0', 'smantifraud'
  s.ios.vendored_libraries = 'Sources/libSmAntiFraud.a'
  s.pod_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' ,'ENABLE_BITCODE' => 'NO - $(inherited)' }
  s.user_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' ,'ENABLE_BITCODE' => 'NO - $(inherited)' }
  s.requires_arc = true
  s.static_framework = true
  
end
