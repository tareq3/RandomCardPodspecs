#
# Be sure to run `pod lib lint PrandomCars.pods' to ensure this is a
# valid s before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Pods see https://guides.cocoapods.org/syntax/pods.html
#

Pod::Spec.new do |s|
  s.name             = 'PrandomCars'
  s.version          = '0.2.0'
  s.summary          = 'A short descsription of PrandomCars.'



  s.homepage         = 'https://github.com/mti.tareq3@gmail.com/RandomCars'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mti.tareq3@gmail.com' => 'tareq@threls.com' }
  # s.source           = { :git => 'https://github.com/mti.tareq3@gmail.com/PrandomCars.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.platform          = :ios
  # s.source = { :http => "https://raw.githubusercontent.com/tareq3/RandomCarsLibs/main/#{s.version}/RandomCars.zip" }
  s.source = { :http => "https://raw.githubusercontent.com/tareq3/RandomCarsLibs/main/0.1.2/WeavrComponents.xcframework.zip" }


  
  # s.resource_bundles = {
  #   'PrandomCars' => ['PrandomCars/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.requires_arc = true
  s.ios.deployment_target    = '11.0'
  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)'
  }




  s.default_subspec = 'Default'


  s.subspec 'Default' do |sp|
    sp.dependency 'PrandomCars/Core'
  end

  s.subspec 'Core' do |sp|
    sp.vendored_frameworks =  'WeavrComponents.xcframework' 
  end

  s.subspec 'KYC' do |sp|
    # sp.vendored_frameworks =  'XYZ.xcframework' 
    sp.dependency 'PrandomCars/Core'
    sp.dependency 'IdensicMobileSDK', '~> 1.19.5'

  end

  # s.subspec 'KYC-Fat' do |sp|
  #   sp.vendored_frameworks =  'IdensicMobileSDK.xcframework' 
  #   sp.dependency 'PrandomCars/Core'

  # end


  s.subspec 'Toast' do |sp|
    sp.dependency 'PrandomCars/Core'
    sp.dependency 'Toast-Swift', '~> 5.0.1'

  end

  s.subspec 'Crypto' do |sp|
    sp.dependency 'PrandomCars/Core'
    sp.dependency 'CryptoSwift', '1.6.0'

  end

  # s.subspec 'KYC-Only' do |sp|
  #   sp.vendored_frameworks =  'IdensicMobileSDK.xcframework' 

  # end

  s.pod_target_xcconfig = { 

  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'

 }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  

  


end
