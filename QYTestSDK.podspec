#
# Be sure to run `pod lib lint MyTestSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QYTestSDK'
  s.version          = '0.0.1'
  s.summary          = '测试项目'
  s.homepage         = 'https://github.com/q1019736727/QYTestSDKSpec'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'qiuyong' => '1837060380@qq.com' }
  s.source           = { :git => 'https://github.com/q1019736727/QYTestSDKSpec.git', :tag => s.version }
  s.platform     = :ios
  s.ios.deployment_target = '10.0'

  s.source_files = 'QYTestSDK/QYTestSDK.framework/Headers/*.{h,swift}'
  s.ios.vendored_frameworks = 'QYTestSDK/QYTestSDK.framework'
  s.requires_arc = true
  s.swift_versions = '5.0'
  s.frameworks = 'UIKit', 'Foundation'
  s.dependency 'TMComponentKitSDK'
  s.dependency 'Alamofire'
  s.dependency 'TMSDK'
  s.xcconfig = {
      'VALID_ARCHS' =>  'x86_64 arm64',
  }
  #s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  #s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
