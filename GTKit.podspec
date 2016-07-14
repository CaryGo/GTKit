Pod::Spec.new do |s|
  s.name         = 'GTKit'
  s.summary      = 'HelpKit .'
  # s.description = <<-DESC
# 帮助开发者快速集成项目。
# DESC
  s.version      = '0.0.5'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'Cary' => 'guojiashuang@live.com' }
  #s.social_media_url = 'http://blog.Cary.com'
  s.homepage     = 'https://github.com/CaryGo/GTKit'

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.7'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  
  s.requires_arc = true

  s.source       = { :git => 'https://github.com/CaryGo/GTKit.git', :tag => s.version.to_s }
  
  s.default_subspec = 'UIKit', 'Foundation', 'Common', 'Categories'
  
  s.frameworks = 'Foundation', 'CoreFoundation'
  
  #s.source_files = 'GTKit/GTKit.h'
  s.public_header_files = 'GTKit/*.h'
  
  s.subspec 'UIKit' do |ui|

	#ui.ios.weak_frameworks = 'PassKit'

	ui.source_files = 'GTKit/UIKit/*.{h,m}'

	#ui.public_header_files = 'lib/Channels/ApplePay/*.h'

	#ui.vendored_libraries = 'lib/Channels/ApplePay/*.a'

	#ui.dependency 'GTKit/Foundation'
	#ui.dependency 'GTKit/Common'

  end
  s.subspec 'Foundation' do |ss|

	ss.source_files = 'GTKit/Foundation/*.{h,m}'

  end
  s.subspec 'Common' do |ss|

	ss.source_files = 'GTKit/Common/*.{h,m}'

  end
  s.subspec 'Cat# egories' do |ss|

	ss.source_files = 'GTKit/Categories/*.{h,m}'

  end







end