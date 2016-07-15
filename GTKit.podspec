Pod::Spec.new do |s|
  s.name         = 'GTKit'
  s.summary      = 'HelpKit .'
  s.description = <<-DESC
帮助开发者快速集成项目。
DESC
  s.version      = '0.1.1'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'Cary' => 'guojiashuang@live.com' }
  #s.social_media_url = 'http://blog.Cary.com'
  s.homepage     = 'https://github.com/CaryGo/GTKit'

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.7'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.source       = { :git => 'https://github.com/CaryGo/GTKit.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'GTKit/*.{h,m}'
  #s.public_header_files = 'GTKit/GTKit'
  
  s.frameworks = 'Foundation', 'CoreFoundation'

end