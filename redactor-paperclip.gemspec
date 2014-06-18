$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "redactor-paperclip/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "redactor-paperclip"
  s.version     = RedactorPaperclip::VERSION
  s.authors     = ["Helter Design", 'Bryan Mahoney']
  s.email       = ["bryan@godynamo.com"]
  s.homepage    = "https://github.com/dynamomtl/redactor-paperclip"
  s.summary     = "Image upload management provided by Paperclip Gem for the Redactor Editor"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0"
  s.add_dependency "paperclip"
  s.add_development_dependency "sqlite3"
end
