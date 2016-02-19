# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)

require "catarse_iugu/version"

Gem::Specification.new do |s|
  s.name        = "catarse_iugu"
  s.version     = CatarseIugu::VERSION
  s.authors     = ["Iuri Madeira"]
  s.email       = ["iurimadeira@gmail.com"]
  s.homepage    = "http://github.com/iurimadeira/catarse_iugu"
  s.summary     = "Integration with Iugu"
  s.description = "Iugu engine for catarse"

  s.files      = `git ls-files`.split($\)
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "iugu", "1.0.8"
  s.add_dependency "weekdays", ">= 1.0.2"
  s.add_dependency "sidekiq"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "pg"
  s.add_development_dependency "database_cleaner"
end
