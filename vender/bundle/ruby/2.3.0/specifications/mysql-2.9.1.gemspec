# -*- encoding: utf-8 -*-
# stub: mysql 2.9.1 ruby lib
# stub: ext/mysql_api/extconf.rb

Gem::Specification.new do |s|
  s.name = "mysql".freeze
  s.version = "2.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["TOMITA Masahiro".freeze]
  s.date = "2013-02-16"
  s.description = "This is the MySQL API module for Ruby. It provides the same functions for Ruby\nprograms that the MySQL C API provides for C programs.\n\nThis package is offered as gem for easy installation using RubyGems. It wraps\nunmodified tmtm's mysql-ruby extension into a proper gem.\n\nPlease note that tmtm (Tomita Mashahiro) has deprecated development of this\nextension and only update it for bug fixes.".freeze
  s.email = ["tommy@tmtm.org".freeze]
  s.extensions = ["ext/mysql_api/extconf.rb".freeze]
  s.extra_rdoc_files = ["History.txt".freeze, "Manifest.txt".freeze, "README.txt".freeze]
  s.files = ["History.txt".freeze, "Manifest.txt".freeze, "README.txt".freeze, "ext/mysql_api/extconf.rb".freeze]
  s.homepage = "http://github.com/luislavena/mysql-gem".freeze
  s.rdoc_options = ["--main".freeze, "README.txt".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7".freeze)
  s.rubyforge_project = "mysql-win".freeze
  s.rubygems_version = "2.5.2.1".freeze
  s.summary = "This is the MySQL API module for Ruby".freeze

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 3.10"])
      s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 0.8.1"])
      s.add_development_dependency(%q<hoe>.freeze, ["~> 3.5"])
    else
      s.add_dependency(%q<rdoc>.freeze, ["~> 3.10"])
      s.add_dependency(%q<rake-compiler>.freeze, ["~> 0.8.1"])
      s.add_dependency(%q<hoe>.freeze, ["~> 3.5"])
    end
  else
    s.add_dependency(%q<rdoc>.freeze, ["~> 3.10"])
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 0.8.1"])
    s.add_dependency(%q<hoe>.freeze, ["~> 3.5"])
  end
end
