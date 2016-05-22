# -*- encoding: utf-8 -*-
# stub: mixlib-shellout 1.6.1 ruby lib

Gem::Specification.new do |s|
  s.name = "mixlib-shellout"
  s.version = "1.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Opscode"]
  s.date = "2014-12-01"
  s.description = "Run external commands on Unix or Windows"
  s.email = "info@opscode.com"
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.files = ["README.md", "LICENSE"]
  s.homepage = "http://wiki.opscode.com/"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.1.11"
  s.summary = "Run external commands on Unix or Windows"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.0"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.0"])
  end
end
