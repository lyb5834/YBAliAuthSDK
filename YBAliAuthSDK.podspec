#
# Be sure to run `pod lib lint YBAliAuthSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YBAliAuthSDK'
  s.version          = '2.13.2'
  s.summary          = '阿里云号码认证SDK（自用）.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
 这是一个自用的集成阿里云号码认证服务SDK
                        DESC

  s.homepage         = 'https://github.com/lyb5834/YBAliAuthSDK.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lyb' => 'lyb5834@126.com' }
  s.source           = { :git => 'https://github.com/lyb5834/YBAliAuthSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'   }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.resources           = 'YBAliAuthSDK/ATAuthSDK.framework/ATAuthSDK.bundle'
  s.vendored_frameworks = 'YBAliAuthSDK/ATAuthSDK.framework','YBAliAuthSDK/YTXMonitor.framework','YBAliAuthSDK/YTXOperators.framework'
  s.static_framework = false

  # 解决移动crash
  s.xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC',
    'ENABLE_BITCODE' => 'NO'
  }


end