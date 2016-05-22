# -*- encoding: utf-8 -*-
# stub: rspec-its 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-its"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Peter Alfvin"]
  s.date = "2015-02-18"
  s.description = "RSpec extension gem for attribute matching"
  s.email = ["palfvin@gmail.com"]
  s.homepage = "https://github.com/rspec/rspec-its"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.11"
  s.summary = "Provides \"its\" method formerly part of rspec-core"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec-core>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<rspec-expectations>, [">= 3.0.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, ["~> 10.1.0"])
      s.add_development_dependency(%q<cucumber>, ["~> 1.3.8"])
      s.add_development_dependency(%q<aruba>, ["~> 0.5"])
    else
      s.add_dependency(%q<rspec-core>, [">= 3.0.0"])
      s.add_dependency(%q<rspec-expectations>, [">= 3.0.0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, ["~> 10.1.0"])
      s.add_dependency(%q<cucumber>, ["~> 1.3.8"])
      s.add_dependency(%q<aruba>, ["~> 0.5"])
    end
  else
    s.add_dependency(%q<rspec-core>, [">= 3.0.0"])
    s.add_dependency(%q<rspec-expectations>, [">= 3.0.0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, ["~> 10.1.0"])
    s.add_dependency(%q<cucumber>, ["~> 1.3.8"])
    s.add_dependency(%q<aruba>, ["~> 0.5"])
  end
end
