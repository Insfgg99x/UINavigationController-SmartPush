Pod::Spec.new do |s|

s.name         = "SmartPush"
s.version      = "1.0"
s.summary      = "UINavigationController push到下一界面时自动隐藏底部UITabbar，pop回来时自动显示底部UITabbar"
s.homepage     = "https://github.com/Insfgg99x/UINavigationController-SmartPush"
s.license      = "MIT"
s.authors      = { "CGPointZero" => "newbox0512@yahoo.com" }
s.source       = { :git => "https://github.com/Insfgg99x/UINavigationController-SmartPush.git", :tag => "1.0"}
s.ios.deployment_target = '7.0'
s.source_files = 'SmartPush/*.{h,m}'
s.requires_arc = true

end

