#
# Be sure to run `pod lib lint AppleDevice-Swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AppleDevice-Swift'
  s.version          = '0.1.0'
  s.summary          = 'A cocoapods library to get Apple device\'s model.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A cocoapods library to get Apple device\'s model, written by Swift 5.
                       DESC

  s.homepage         = 'https://github.com/chy-dev/AppleDevice-Swift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chen' => 'chenyu.dev@gmail.com' }
  s.source           = { :git => 'https://github.com/chy-dev/AppleDevice-Swift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.watchos.deployment_target = '3.0'

  s.source_files = 'AppleDevice-Swift/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AppleDevice-Swift' => ['AppleDevice-Swift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
