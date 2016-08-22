Pod::Spec.new do |s|
  s.name             = "EmojiTimeFormatter"
  s.version          = "1.0.0"
  s.summary          = "Format your dates/times as emojis."
  s.description      = <<-DESC
                       EmojiTimeFormatter is a Swift Library, which enables to format date/times to clock watch emojis. 🕐 🕛 🕦 🕚 🕒 🕑 🕔
                       DESC
  s.homepage         = "https://github.com/thomaspaulmann/emojitimeformatter"
  s.license          = 'MIT'
  s.author           = { "Thomas Paul Mann" => "hi@thomaspaulmann.com" }
  s.source           = { :git => "https://github.com/thomaspaulmann/EmojiTimeFormatter.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/thomaspaulmann'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Sources/*.swift'
end
