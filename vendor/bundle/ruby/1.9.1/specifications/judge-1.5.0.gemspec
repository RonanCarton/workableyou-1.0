# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "judge"
  s.version = "1.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joe Corcoran"]
  s.date = "2012-04-12"
  s.description = "Validate Rails 3 forms on the client side, cleanly"
  s.email = "joe@tribesports.com"
  s.homepage = "http://github.com/joecorcoran/judge"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Simple client side ActiveModel::Validators"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jasmine>, ["~> 1.1.2"])
      s.add_development_dependency(%q<rails>, ["~> 3.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.5"])
      s.add_development_dependency(%q<factory_girl>, ["~> 2.6"])
    else
      s.add_dependency(%q<jasmine>, ["~> 1.1.2"])
      s.add_dependency(%q<rails>, ["~> 3.2"])
      s.add_dependency(%q<rspec>, ["~> 2.8"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.5"])
      s.add_dependency(%q<factory_girl>, ["~> 2.6"])
    end
  else
    s.add_dependency(%q<jasmine>, ["~> 1.1.2"])
    s.add_dependency(%q<rails>, ["~> 3.2"])
    s.add_dependency(%q<rspec>, ["~> 2.8"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.5"])
    s.add_dependency(%q<factory_girl>, ["~> 2.6"])
  end
end
