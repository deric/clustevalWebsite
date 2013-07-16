# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rails3-generators"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jose Valim", "Anuj Dutta", "Paul Berry", "Jeff Tucker", "Louis T.", "Jai-Gouk Kim", "Darcy Laycock", "Peter Haza", "Peter Gumeson", "Kristian Mandrup", "Alejandro Juarez"]
  s.date = "2012-10-07"
  s.description = "Rails 3 compatible generators for gems that don't have them yet "
  s.email = "andre@arko.net"
  s.extra_rdoc_files = ["README.rdoc", "CHANGELOG.rdoc"]
  s.files = ["README.rdoc", "CHANGELOG.rdoc"]
  s.homepage = "https://github.com/indirect/rails3-generators"
  s.post_install_message = "\nrails3-generators-1.0.0\n\nMongoMapper generators removed. MongoMapper (https://github.com/jnunemaker/mongomapper) has its own generators.\n\nSimpleForm generators removed. SimpleForm (https://github.com/plataformatec/simple_form) has its onw generators.\n\nFormtastic generators removed. Formtastic (https://github.com/justinfrench/formtastic) has its onw generators.\n\nAuthlogic generators removed. Authlogic (https://github.com/binarylogic/authlogic) has its onw generators.\n\nBe sure to check out the wiki, https://wiki.github.com/indirect/rails3-generators/,\nfor information about recent changes to this project.\n"
  s.require_paths = ["lib"]
  s.rubyforge_project = "rails3-generators"
  s.rubygems_version = "1.8.23"
  s.summary = "Rails 3 compatible generators"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.0.0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 3.0.0"])
      s.add_development_dependency(%q<factory_girl>, [">= 0"])
    else
      s.add_dependency(%q<railties>, [">= 3.0.0"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<factory_girl>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.0.0"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<factory_girl>, [">= 0"])
  end
end
