

Pod::Spec.new do |s|

s.name         = "JHFloatView"
s.version      = "0.0.1"
s.summary      = "Basic floating view for iOS."
s.homepage     = "https://github.com/JC-Hu/JHFloatView"
s.license      = "MIT"
s.author             = { "JC-Hu" => "jchu_dlcn@icloud.com" }\

s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/JC-Hu/JHFloatView", :tag => s.version }
s.frameworks   =  'Foundation','UIKit'
s.requires_arc = true

s.subspec 'JHFloatView' do |ss|
ss.source_files = 'QCCR_SH_StoreModule/src/JHFloatView/**/*.{h,m,c,mm}'

end

s.subspec 'Others' do |ss|
ss.source_files = 'QCCR_SH_StoreModule/src/Others/**/*.{h,m,c,mm}'

end

end
