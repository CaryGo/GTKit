Pod::Spec.new do |s|
  s.name         = 'GTKit'
  s.summary      = 'HelpKit .'
  s.description = <<-DESC
					帮助开发者快速集成项目。
					DESC
  s.version      = '0.1.2'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'Cary' => 'guojiashuang@live.com' }
  #s.social_media_url = 'http://blog.Cary.com'
  s.homepage     = 'https://github.com/CaryGo/GTKit'

  s.ios.deployment_target = '7.0'
#   s.osx.deployment_target = '10.7'
#   s.watchos.deployment_target = '2.0'
#   s.tvos.deployment_target = '9.0'

  s.source       = { :git => 'https://github.com/CaryGo/GTKit.git', :tag => s.version.to_s }
  s.requires_arc = true
  
  #s.source_files = 'GTKit/*.{h,m}'
  #s.public_header_files = 'GTKit/GTKit'
#   s.source_files = 'GTKit/**/*'
  s.public_header_files = 'GTKit/*.h'
  
  s.subspec 'Common' do |ss|
      ss.source_files = 'GTKit/Common/**/*'
      ss.public_header_files = 'GTKit/Common/**/*.h'
#       ss.dependency 'OpenUDID', '~> 1.0.0'
  end
  
  s.subspec 'Foundation' do |ss|
      ss.source_files = 'GTKit/Foundation/**/*'
      ss.public_header_files = 'GTKit/Foundation/**/*.h'
#       ss.resource = "Pod/Assets/MLSUIKitResource.bundle"
#       ss.dependency 'PodTestLibrary/CommonTools'
  end

# s.frameworks = 'Foundation', 'CoreFoundation'
end