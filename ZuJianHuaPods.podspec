
Pod::Spec.new do |spec|

  spec.name         = "ZuJianHuaPods"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of ZuJianHuaPods."

  spec.description  = <<-DESC
      ZuJianHuaPods 测试pod管理框架这里是长标题，可以忽略
                   DESC

  spec.homepage     = "http://EXAMPLE/ZuJianHuaPods"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "jiameng" => "17737812427@163.com" }

  spec.source       = { :git => "https://github.com/zxgy/ZuJianHuanPods.git", :tag => "0.0.1" }

  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

end
