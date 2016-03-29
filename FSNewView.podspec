#
#  Be sure to run `pod spec lint FSNewView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "FSNewView"
  s.version      = "0.0.1"
  s.summary      = "Some categories for create views conveniently."
  s.description  = <<-DESC
		    Some categories for create views conveniently, include manual layout and auto layout views init
                   DESC

  s.homepage     = "https://github.com/FasaMo/FSNewView"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "FasaMo" => "Fasa_Mo@iCloud.com" }
  s.social_media_url   = "http://weibo.com/FasaMo"
  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/FasaMo/FSNewView.git", :tag => s.version }
  s.source_files  = "FSNewvIEW/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"

  s.requires_arc = true

end
