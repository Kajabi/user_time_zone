$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "user_time_zone/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "user_time_zone"
  s.version     = UserTimeZone::VERSION
  s.authors     = ["Brendon Murphy"]
  s.email       = ["xternal1+github@gmail.com"]
  s.homepage    = "https://github.com/Kajabi/user_time_zone"
  s.summary     = "Use jstz to select an initial timezone during user sign ups."
  s.description = s.summary
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "simple_form"
end
