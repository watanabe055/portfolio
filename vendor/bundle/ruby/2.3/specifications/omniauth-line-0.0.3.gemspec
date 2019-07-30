# -*- encoding: utf-8 -*-
# stub: omniauth-line 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-line".freeze
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["kazasiki".freeze]
  s.date = "2017-11-10"
  s.description = "OmniAuth strategy for Line".freeze
  s.email = ["kazasiki@gmail.com".freeze]
  s.homepage = "https://github.com/kazasiki/omniauth-line".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "OmniAuth strategy for Line".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>.freeze, ["~> 1.3"])
      s.add_runtime_dependency(%q<omniauth-oauth2>.freeze, ["~> 1.3.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<json>.freeze, ["~> 1.3"])
      s.add_dependency(%q<omniauth-oauth2>.freeze, ["~> 1.3.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<json>.freeze, ["~> 1.3"])
    s.add_dependency(%q<omniauth-oauth2>.freeze, ["~> 1.3.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
  end
end
