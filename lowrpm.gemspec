# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "lowrpm/version"

Gem::Specification.new do |s|
  s.name        = "lowrpm"
  s.version     = Lowrpm::VERSION
  s.authors     = ["David Taylor"]
  s.email       = ["david@cloudartisan.com"]
  s.homepage    = "http://lowrpm.github.com"
  s.summary     = %q{Inspect your application performance}
  s.description = %q{Use lowrpm and New Relic to profile your application}

  s.rubyforge_project = "lowrpm"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "newrelic_rpm", ">= 3.2.0"
end
