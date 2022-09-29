#
# Be sure to run `pod lib lint YBAliAuthSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YBAliAuthSDK'
  s.version          = '2.12.9'
  s.summary          = '阿里云号码认证SDK（自用）.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lyb5834/YBAliAuthSDK.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lyb' => 'lyb5834@126.com' }
  s.source           = { :git => 'https://github.com/lyb5834/YBAliAuthSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  
  s.resources           = 'YBAliAuthSDK/ATAuthSDK.framework/ATAuthSDK.bundle'
  s.vendored_frameworks = 'YBAliAuthSDK/ATAuthSDK.framework','YBAliAuthSDK/YTXMonitor.framework','YBAliAuthSDK/YTXOperators.framework'
end