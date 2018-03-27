

Pod::Spec.new do |s|
  s.name             = 'LLGCDTimer'
  s.version          = '0.1.0'
  s.summary          = 'GCD定时器封装'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lypcliuli/LLGCDTimer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lypcliuli' => 'lypcliuli@163.com' }
  s.source           = { :git => 'https://github.com/lypcliuli/LLGCDTimer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LLGCDTimer/Classes/**/*'
  
end
