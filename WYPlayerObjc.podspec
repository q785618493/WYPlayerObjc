#
# Be sure to run `pod lib lint WYPlayerObjc.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WYPlayerObjc'
  s.version          = '0.8.8'
  s.summary          = 'Packaging bilibili ijkplayer Objc.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  基于ijkplayer的播放器,可播RMTP、网络视频、本地视频等等, 支持模拟器播放，自己学习使用，请勿用于商业用途
                       DESC

  s.homepage         = 'https://github.com/q785618493/WYPlayerObjc'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'q785618493' => '785618493@qq.com' }
  s.source           = { :git => 'https://github.com/q785618493/WYPlayerObjc.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'WYPlayerObjc/Classes/**/*'
  
  s.vendored_frameworks = "WYPlayerObjc/IJKMediaFramework.framework"
  
  s.libraries     = "z", "bz2", "c++"
  
  # "CoreGraphics"
  s.frameworks    = "AVKit", "Accelerate", "AudioToolbox", "AVFoundation", "CoreAudio", "CoreVideo", "CoreMedia", "CoreTelephony", "Foundation", "MediaPlayer", "OpenGLES", "QuartzCore", "UIKit", "VideoToolbox"
  
  # s.resource_bundles = {
  #   'WYPlayerObjc' => ['WYPlayerObjc/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
