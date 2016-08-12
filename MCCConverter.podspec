Pod::Spec.new do |s|
  s.platform     = :ios
  s.ios.deployment_target = '8.0'
  s.name                  = 'MCCConverter'
  s.version               = '1.0.0'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.summary               = 'Mobile Country Code Converter for iOS'
  s.homepage              = 'https://github.com/Greenshire/MCCConverter'
  s.authors               = { 'Jeremy Tregunna' => 'jeremy@greenshire.co' }
  s.source                = { :git => 'https://github.com/Greenshire/MCCConverter.git', :tag => '1.0.0' }
  s.requires_arc          = true
  s.source_files          = "MCCConverter/**/*.swift"
  s.resources             = "MCCConverter/**/*.plist"
end
