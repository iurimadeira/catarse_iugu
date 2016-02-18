$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "catarse_iugu/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "catarse_iugu"
  s.version     = CatarseIugu::VERSION
  s.authors     = ["Iuri Madeira"]
  s.email       = ["iurimadeira@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of CatarseIugu."
  s.description = "TODO: Description of CatarseIugu."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end
