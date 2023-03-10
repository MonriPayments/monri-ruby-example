# -*- encoding: utf-8 -*-
# stub: roda 3.63.0 ruby lib

Gem::Specification.new do |s|
  s.name = "roda".freeze
  s.version = "3.63.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/jeremyevans/roda/issues", "changelog_uri" => "https://roda.jeremyevans.net/rdoc/files/CHANGELOG.html", "documentation_uri" => "https://roda.jeremyevans.net/documentation.html", "mailing_list_uri" => "https://github.com/jeremyevans/roda/discussions", "source_code_uri" => "https://github.com/jeremyevans/roda" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jeremy Evans".freeze]
  s.date = "2022-12-16"
  s.email = ["code@jeremyevans.net".freeze]
  s.extra_rdoc_files = ["README.rdoc".freeze, "MIT-LICENSE".freeze, "CHANGELOG".freeze, "doc/conventions.rdoc".freeze, "doc/release_notes/3.0.0.txt".freeze, "doc/release_notes/3.1.0.txt".freeze, "doc/release_notes/3.10.0.txt".freeze, "doc/release_notes/3.11.0.txt".freeze, "doc/release_notes/3.12.0.txt".freeze, "doc/release_notes/3.13.0.txt".freeze, "doc/release_notes/3.14.0.txt".freeze, "doc/release_notes/3.14.1.txt".freeze, "doc/release_notes/3.15.0.txt".freeze, "doc/release_notes/3.16.0.txt".freeze, "doc/release_notes/3.17.0.txt".freeze, "doc/release_notes/3.18.0.txt".freeze, "doc/release_notes/3.19.0.txt".freeze, "doc/release_notes/3.2.0.txt".freeze, "doc/release_notes/3.20.0.txt".freeze, "doc/release_notes/3.21.0.txt".freeze, "doc/release_notes/3.22.0.txt".freeze, "doc/release_notes/3.23.0.txt".freeze, "doc/release_notes/3.24.0.txt".freeze, "doc/release_notes/3.25.0.txt".freeze, "doc/release_notes/3.26.0.txt".freeze, "doc/release_notes/3.27.0.txt".freeze, "doc/release_notes/3.28.0.txt".freeze, "doc/release_notes/3.29.0.txt".freeze, "doc/release_notes/3.3.0.txt".freeze, "doc/release_notes/3.30.0.txt".freeze, "doc/release_notes/3.31.0.txt".freeze, "doc/release_notes/3.32.0.txt".freeze, "doc/release_notes/3.33.0.txt".freeze, "doc/release_notes/3.34.0.txt".freeze, "doc/release_notes/3.35.0.txt".freeze, "doc/release_notes/3.36.0.txt".freeze, "doc/release_notes/3.37.0.txt".freeze, "doc/release_notes/3.38.0.txt".freeze, "doc/release_notes/3.39.0.txt".freeze, "doc/release_notes/3.4.0.txt".freeze, "doc/release_notes/3.40.0.txt".freeze, "doc/release_notes/3.41.0.txt".freeze, "doc/release_notes/3.42.0.txt".freeze, "doc/release_notes/3.43.0.txt".freeze, "doc/release_notes/3.44.0.txt".freeze, "doc/release_notes/3.45.0.txt".freeze, "doc/release_notes/3.46.0.txt".freeze, "doc/release_notes/3.47.0.txt".freeze, "doc/release_notes/3.48.0.txt".freeze, "doc/release_notes/3.49.0.txt".freeze, "doc/release_notes/3.5.0.txt".freeze, "doc/release_notes/3.50.0.txt".freeze, "doc/release_notes/3.51.0.txt".freeze, "doc/release_notes/3.52.0.txt".freeze, "doc/release_notes/3.53.0.txt".freeze, "doc/release_notes/3.54.0.txt".freeze, "doc/release_notes/3.55.0.txt".freeze, "doc/release_notes/3.56.0.txt".freeze, "doc/release_notes/3.57.0.txt".freeze, "doc/release_notes/3.58.0.txt".freeze, "doc/release_notes/3.59.0.txt".freeze, "doc/release_notes/3.6.0.txt".freeze, "doc/release_notes/3.60.0.txt".freeze, "doc/release_notes/3.61.0.txt".freeze, "doc/release_notes/3.62.0.txt".freeze, "doc/release_notes/3.63.0.txt".freeze, "doc/release_notes/3.7.0.txt".freeze, "doc/release_notes/3.8.0.txt".freeze, "doc/release_notes/3.9.0.txt".freeze]
  s.files = ["CHANGELOG".freeze, "MIT-LICENSE".freeze, "README.rdoc".freeze, "doc/conventions.rdoc".freeze, "doc/release_notes/3.0.0.txt".freeze, "doc/release_notes/3.1.0.txt".freeze, "doc/release_notes/3.10.0.txt".freeze, "doc/release_notes/3.11.0.txt".freeze, "doc/release_notes/3.12.0.txt".freeze, "doc/release_notes/3.13.0.txt".freeze, "doc/release_notes/3.14.0.txt".freeze, "doc/release_notes/3.14.1.txt".freeze, "doc/release_notes/3.15.0.txt".freeze, "doc/release_notes/3.16.0.txt".freeze, "doc/release_notes/3.17.0.txt".freeze, "doc/release_notes/3.18.0.txt".freeze, "doc/release_notes/3.19.0.txt".freeze, "doc/release_notes/3.2.0.txt".freeze, "doc/release_notes/3.20.0.txt".freeze, "doc/release_notes/3.21.0.txt".freeze, "doc/release_notes/3.22.0.txt".freeze, "doc/release_notes/3.23.0.txt".freeze, "doc/release_notes/3.24.0.txt".freeze, "doc/release_notes/3.25.0.txt".freeze, "doc/release_notes/3.26.0.txt".freeze, "doc/release_notes/3.27.0.txt".freeze, "doc/release_notes/3.28.0.txt".freeze, "doc/release_notes/3.29.0.txt".freeze, "doc/release_notes/3.3.0.txt".freeze, "doc/release_notes/3.30.0.txt".freeze, "doc/release_notes/3.31.0.txt".freeze, "doc/release_notes/3.32.0.txt".freeze, "doc/release_notes/3.33.0.txt".freeze, "doc/release_notes/3.34.0.txt".freeze, "doc/release_notes/3.35.0.txt".freeze, "doc/release_notes/3.36.0.txt".freeze, "doc/release_notes/3.37.0.txt".freeze, "doc/release_notes/3.38.0.txt".freeze, "doc/release_notes/3.39.0.txt".freeze, "doc/release_notes/3.4.0.txt".freeze, "doc/release_notes/3.40.0.txt".freeze, "doc/release_notes/3.41.0.txt".freeze, "doc/release_notes/3.42.0.txt".freeze, "doc/release_notes/3.43.0.txt".freeze, "doc/release_notes/3.44.0.txt".freeze, "doc/release_notes/3.45.0.txt".freeze, "doc/release_notes/3.46.0.txt".freeze, "doc/release_notes/3.47.0.txt".freeze, "doc/release_notes/3.48.0.txt".freeze, "doc/release_notes/3.49.0.txt".freeze, "doc/release_notes/3.5.0.txt".freeze, "doc/release_notes/3.50.0.txt".freeze, "doc/release_notes/3.51.0.txt".freeze, "doc/release_notes/3.52.0.txt".freeze, "doc/release_notes/3.53.0.txt".freeze, "doc/release_notes/3.54.0.txt".freeze, "doc/release_notes/3.55.0.txt".freeze, "doc/release_notes/3.56.0.txt".freeze, "doc/release_notes/3.57.0.txt".freeze, "doc/release_notes/3.58.0.txt".freeze, "doc/release_notes/3.59.0.txt".freeze, "doc/release_notes/3.6.0.txt".freeze, "doc/release_notes/3.60.0.txt".freeze, "doc/release_notes/3.61.0.txt".freeze, "doc/release_notes/3.62.0.txt".freeze, "doc/release_notes/3.63.0.txt".freeze, "doc/release_notes/3.7.0.txt".freeze, "doc/release_notes/3.8.0.txt".freeze, "doc/release_notes/3.9.0.txt".freeze]
  s.homepage = "https://roda.jeremyevans.net".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Routing tree web toolkit".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 5.7.0"])
      s.add_development_dependency(%q<minitest-hooks>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest-global_expectations>.freeze, [">= 0"])
      s.add_development_dependency(%q<tilt>.freeze, [">= 0"])
      s.add_development_dependency(%q<erubi>.freeze, [">= 0"])
      s.add_development_dependency(%q<rack_csrf>.freeze, [">= 0"])
      s.add_development_dependency(%q<sassc>.freeze, [">= 0"])
      s.add_development_dependency(%q<json>.freeze, [">= 0"])
      s.add_development_dependency(%q<mail>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rack>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, [">= 5.7.0"])
      s.add_dependency(%q<minitest-hooks>.freeze, [">= 0"])
      s.add_dependency(%q<minitest-global_expectations>.freeze, [">= 0"])
      s.add_dependency(%q<tilt>.freeze, [">= 0"])
      s.add_dependency(%q<erubi>.freeze, [">= 0"])
      s.add_dependency(%q<rack_csrf>.freeze, [">= 0"])
      s.add_dependency(%q<sassc>.freeze, [">= 0"])
      s.add_dependency(%q<json>.freeze, [">= 0"])
      s.add_dependency(%q<mail>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rack>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 5.7.0"])
    s.add_dependency(%q<minitest-hooks>.freeze, [">= 0"])
    s.add_dependency(%q<minitest-global_expectations>.freeze, [">= 0"])
    s.add_dependency(%q<tilt>.freeze, [">= 0"])
    s.add_dependency(%q<erubi>.freeze, [">= 0"])
    s.add_dependency(%q<rack_csrf>.freeze, [">= 0"])
    s.add_dependency(%q<sassc>.freeze, [">= 0"])
    s.add_dependency(%q<json>.freeze, [">= 0"])
    s.add_dependency(%q<mail>.freeze, [">= 0"])
  end
end
