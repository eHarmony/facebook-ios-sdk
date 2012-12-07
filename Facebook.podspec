Pod::Spec.new do |s|
  s.name         = "Facebook"
  s.version      = "3.1.101"
  s.summary      = "Facebook integration for iOS apps."
  s.homepage     = "https://github.com/eHarmony/facebook-ios-sdk"
  s.license      = {
    :type => 'Proprietary',
    :text => <<-LICENSE
        Copyright (c) 2012 eHarmony. All rights reserved.

        LICENSE
    }
  s.author       = { "Ryan Holmes" => "rholmes@eharmony.com" }
  s.source       = { :git => "https://github.com/eHarmony/facebook-ios-sdk.git", :tag => "v#{s.version}" }
  s.platform     = :ios, '5.0'
  s.source_files = 'src'
  s.resource = 'src/FBDialog.bundle'
  s.frameworks = 'Foundation'
  s.requires_arc = true
  s.prefix_header_file = 'Facebook/Facebook-Prefix.pch'
  s.compiler_flags = '-DJSONKIT=1 -DSBJSON=0'
  s.dependency 'JSONKit', '~> 1.4'
end
