# -*- encoding: utf-8 -*-
# stub: chartable 0.0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "chartable".freeze
  s.version = "0.0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Pawe\u{142} D\u{105}browski".freeze]
  s.date = "2018-04-25"
  s.description = "A lightweight and database-level library to transform any Active Record query into analytics data ready for any chart".freeze
  s.email = "dziamber@gmail.com".freeze
  s.homepage = "http://github.com/rubyhero/chartable".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "A lightweight and database-level library to transform any Active Record query into analytics data ready for any chart".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
      s.add_runtime_dependency(%q<chronic>.freeze, ["~> 0.10"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 3.7.0", "~> 3.7"])
      s.add_development_dependency(%q<activerecord>.freeze, [">= 4.0.0"])
      s.add_development_dependency(%q<mysql2>.freeze, ["~> 0"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0"])
      s.add_development_dependency(%q<factory_bot_rails>.freeze, [">= 4.0.0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, [">= 1.0.0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<chronic>.freeze, ["~> 0.10"])
      s.add_dependency(%q<rspec>.freeze, [">= 3.7.0", "~> 3.7"])
      s.add_dependency(%q<activerecord>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<mysql2>.freeze, ["~> 0"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0"])
      s.add_dependency(%q<factory_bot_rails>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<database_cleaner>.freeze, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<chronic>.freeze, ["~> 0.10"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.7.0", "~> 3.7"])
    s.add_dependency(%q<activerecord>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<mysql2>.freeze, ["~> 0"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0"])
    s.add_dependency(%q<factory_bot_rails>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 1.0.0"])
  end
end
