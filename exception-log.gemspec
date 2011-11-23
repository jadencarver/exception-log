# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "exception-log/version"

Gem::Specification.new do |s|
  s.name        = "mongoid-exceptions"
  s.version     = ExceptionLog::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jaden Carver"]
  s.email       = ["jaden.carver@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Log exceptions using Mongoid}
  s.description = %q{}

  s.rubyforge_project = "exception-log"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
