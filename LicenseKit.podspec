# This podspec is only used to create versions with Fastlane.

Pod::Spec.new do |s|
  s.name             = 'LicenseKit'
  s.version          = '0.5.1'
  s.swift_versions   = ['5.6']
  s.summary          = 'LicenseKit lets you protect your closed-source Swift libraries.'

  s.description      = <<-DESC
LicenseKit lets you protect your closed-source Swift libraries with commercial licenses.
                       DESC

  s.homepage         = 'https://github.com/danielsaidi/LicenseKit'
  s.license          = { :type => 'CLOSED-SOURCE', :file => 'LICENSE' }
  s.author           = { 'Daniel Saidi' => 'daniel.saidi@gmail.com' }
  s.source           = { :git => 'https://github.com/danielsaidi/LicenseKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/danielsaidi'

  s.swift_version = '5.6'
    
  s.ios.deployment_target = '13.0'
  s.macos.deployment_target = '12.0'
  s.tvos.deployment_target = '13.0'
  s.watchos.deployment_target = '6.0'
end
