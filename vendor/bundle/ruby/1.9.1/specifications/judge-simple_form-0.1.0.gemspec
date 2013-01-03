# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "judge-simple_form"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joe Corcoran"]
  s.date = "2012-03-06"
  s.description = "Easily add Judge client side validation to your SimpleForm forms"
  s.email = "joe@tribesports.com"
  s.homepage = "http://github.com/joecorcoran/judge-simple_form"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "SimpleForm adapter for Judge"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<judge>, ["~> 1.1"])
      s.add_runtime_dependency(%q<simple_form>, ["~> 2.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rails>, ["~> 3.2"])
      s.add_development_dependency(%q<sqlite3-ruby>, ["~> 1.3.3"])
      s.add_development_dependency(%q<judge>, ["~> 1.1"])
      s.add_development_dependency(%q<formtastic>, ["~> 2.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8"])
      s.add_development_dependency(%q<factory_girl>, ["~> 2.6"])
    else
      s.add_dependency(%q<judge>, ["~> 1.1"])
      s.add_dependency(%q<simple_form>, ["~> 2.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rails>, ["~> 3.2"])
      s.add_dependency(%q<sqlite3-ruby>, ["~> 1.3.3"])
      s.add_dependency(%q<judge>, ["~> 1.1"])
      s.add_dependency(%q<formtastic>, ["~> 2.0"])
      s.add_dependency(%q<rspec>, ["~> 2.8"])
      s.add_dependency(%q<factory_girl>, ["~> 2.6"])
    end
  else
    s.add_dependency(%q<judge>, ["~> 1.1"])
    s.add_dependency(%q<simple_form>, ["~> 2.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rails>, ["~> 3.2"])
    s.add_dependency(%q<sqlite3-ruby>, ["~> 1.3.3"])
    s.add_dependency(%q<judge>, ["~> 1.1"])
    s.add_dependency(%q<formtastic>, ["~> 2.0"])
    s.add_dependency(%q<rspec>, ["~> 2.8"])
    s.add_dependency(%q<factory_girl>, ["~> 2.6"])
  end
end
