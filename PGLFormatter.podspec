Pod::Spec.new do |s|

  s.name         = "PGLFormatter"
  s.version      = "0.0.1"
  s.summary      = "Simple container of NSFormatter and useful functions."

  s.description  = <<-DESC
					# PGLFormatter
					PGLFormatter is a simple container of NSFormatter and useful functions  
					##Reason
					Formatters are extremely expensive to create so it's very important to reuse the formatter as much as you can. 
					
					If you use the same formatter in the entire project you can set in a single point (e.g. AppDelegate) and then forget about the NSFormatter and simple use the function that PGLFormatter offers, for format() to format Double Float Int (see the example), otherwise you should remember to set the behavior every time

                   DESC

  s.homepage     = "https://github.com/PGLongo/PGLFormatter"
  
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = "PGLongo"
  s.ios.deployment_target = '8.0'

  s.source       = { :git => "https://github.com/PGLongo/PGLFormatter.git", :tag => s.version }


  s.source_files  = "PGLFormatter/*.swift"
end
