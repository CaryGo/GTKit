
Pod::Spec.new do |s|
  s.name         = 'GTKit'
  s.summary      = 'A collection of iOS components.'
  s.version      = '0.0.1'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'Cary' => 'guojiashuang@live.com' }
  #s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/CaryGo/GTKit'
  s.platform     = :ios
  s.source       = { :git => 'https://github.com/CaryGo/GTKit.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'GTKit/GTKit/*.{h,m}'
  s.public_header_files = 'GTKit/GTKit/*.{h}'

  s.libraries = 'z', 'sqlite3'
  s.frameworks = 'UIKit', 'CoreFoundation', 'CoreText', 'CoreGraphics', 'CoreImage', 'QuartzCore', 'ImageIO', 'AssetsLibrary', 'Accelerate', 'MobileCoreServices', 'SystemConfiguration'

end