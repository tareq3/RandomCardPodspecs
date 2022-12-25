#
# Be sure to run `pod lib lint PrandomCars.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name             = 'PrandomCars'
  spec.version          = '0.1.0'
  spec.summary          = 'A short description of PrandomCars.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  spec.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  spec.homepage         = 'https://github.com/mti.tareq3@gmail.com/RandomCars'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'mti.tareq3@gmail.com' => 'tareq@threls.com' }
  # s.source           = { :git => 'https://github.com/mti.tareq3@gmail.com/PrandomCars.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  spec.platform          = :ios
  spec.source = { :http => "https://raw.githubusercontent.com/tareq3/RandomCarsLibs/main/#{s.version}/RandomCars.zip" }


  
  # s.resource_bundles = {
  #   'PrandomCars' => ['PrandomCars/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  spec.requires_arc = true
  spec.ios.deployment_target    = '11.0'
  spec.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)'
  }




  spec.default_subspec = 'Debug'

  spec.subspec 'Debug' do |sp|
    sp.vendored_frameworks = 'RandomCars.xcframework' 
  end

  spec.subspec 'Release' do |sp|
    sp.vendored_frameworks =  'RandomCars.xcframework' 
  end

  spec.pod_target_xcconfig = { 

  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386'

 }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
  
  spec.dependency 'Toast-Swift', '~> 5.0.1'

  


end
