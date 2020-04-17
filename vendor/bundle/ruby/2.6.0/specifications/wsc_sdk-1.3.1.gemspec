# -*- encoding: utf-8 -*-
# stub: wsc_sdk 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "wsc_sdk".freeze
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jocko MacGregor".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-04-04"
  s.description = "An SDK for accessing the Wowza Streaming Cloud API.".freeze
  s.email = ["jocko.macgregor@wowza.com".freeze]
  s.homepage = "https://www.wowza.com".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.1".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "An SDK for accessing the Wowza Streaming Cloud API.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["> 1.16"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard-coderay>.freeze, [">= 0"])
      s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
      s.add_development_dependency(%q<request_interceptor>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<httparty>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["> 1.0.0"])
      s.add_runtime_dependency(%q<tzinfo-data>.freeze, ["> 1.0.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["> 1.16"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<yard-coderay>.freeze, [">= 0"])
      s.add_dependency(%q<webmock>.freeze, [">= 0"])
      s.add_dependency(%q<request_interceptor>.freeze, [">= 0"])
      s.add_dependency(%q<httparty>.freeze, [">= 0"])
      s.add_dependency(%q<activesupport>.freeze, ["> 1.0.0"])
      s.add_dependency(%q<tzinfo-data>.freeze, ["> 1.0.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["> 1.16"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<yard-coderay>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
    s.add_dependency(%q<request_interceptor>.freeze, [">= 0"])
    s.add_dependency(%q<httparty>.freeze, [">= 0"])
    s.add_dependency(%q<activesupport>.freeze, ["> 1.0.0"])
    s.add_dependency(%q<tzinfo-data>.freeze, ["> 1.0.0"])
  end
end
