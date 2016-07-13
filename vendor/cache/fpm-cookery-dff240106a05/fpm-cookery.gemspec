# -*- encoding: utf-8 -*-
# stub: fpm-cookery 0.16.2 ruby lib

Gem::Specification.new do |s|
  s.name = "fpm-cookery".freeze
  s.version = "0.16.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bernd Ahlers".freeze]
  s.date = "2016-07-13"
  s.description = "A tool for building software packages with fpm.".freeze
  s.email = ["bernd@tuneafish.de".freeze]
  s.executables = ["fpm-cook".freeze]
  s.files = [".autotest".freeze, ".gitignore".freeze, ".travis.yml".freeze, "CHANGELOG.md".freeze, "Gemfile".freeze, "LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "bin/fpm-cook".freeze, "fpm-cookery.gemspec".freeze, "lib/fpm/cookery/book.rb".freeze, "lib/fpm/cookery/book_hook.rb".freeze, "lib/fpm/cookery/chain_packager.rb".freeze, "lib/fpm/cookery/cli.rb".freeze, "lib/fpm/cookery/config.rb".freeze, "lib/fpm/cookery/dependency_inspector.rb".freeze, "lib/fpm/cookery/exceptions.rb".freeze, "lib/fpm/cookery/facts.rb".freeze, "lib/fpm/cookery/log.rb".freeze, "lib/fpm/cookery/log/color.rb".freeze, "lib/fpm/cookery/log/output/console.rb".freeze, "lib/fpm/cookery/log/output/console_color.rb".freeze, "lib/fpm/cookery/log/output/null.rb".freeze, "lib/fpm/cookery/omnibus_packager.rb".freeze, "lib/fpm/cookery/package/dir.rb".freeze, "lib/fpm/cookery/package/gem.rb".freeze, "lib/fpm/cookery/package/maintainer.rb".freeze, "lib/fpm/cookery/package/package.rb".freeze, "lib/fpm/cookery/package/version.rb".freeze, "lib/fpm/cookery/packager.rb".freeze, "lib/fpm/cookery/path.rb".freeze, "lib/fpm/cookery/path_helper.rb".freeze, "lib/fpm/cookery/recipe.rb".freeze, "lib/fpm/cookery/shellout.rb".freeze, "lib/fpm/cookery/source.rb".freeze, "lib/fpm/cookery/source_handler.rb".freeze, "lib/fpm/cookery/source_handler/curl.rb".freeze, "lib/fpm/cookery/source_handler/git.rb".freeze, "lib/fpm/cookery/source_handler/hg.rb".freeze, "lib/fpm/cookery/source_handler/local_path.rb".freeze, "lib/fpm/cookery/source_handler/noop.rb".freeze, "lib/fpm/cookery/source_handler/svn.rb".freeze, "lib/fpm/cookery/source_handler/template.rb".freeze, "lib/fpm/cookery/source_integrity_check.rb".freeze, "lib/fpm/cookery/utils.rb".freeze, "lib/fpm/cookery/version.rb".freeze, "recipes/arr-pm/recipe.rb".freeze, "recipes/backports/recipe.rb".freeze, "recipes/cabin/recipe.rb".freeze, "recipes/clamp/recipe.rb".freeze, "recipes/facter/recipe.rb".freeze, "recipes/fpm-cookery-gem/addressable.rb".freeze, "recipes/fpm-cookery-gem/arr-pm.rb".freeze, "recipes/fpm-cookery-gem/backports.rb".freeze, "recipes/fpm-cookery-gem/cabin.rb".freeze, "recipes/fpm-cookery-gem/childprocess.rb".freeze, "recipes/fpm-cookery-gem/clamp.rb".freeze, "recipes/fpm-cookery-gem/facter.rb".freeze, "recipes/fpm-cookery-gem/ffi.rb".freeze, "recipes/fpm-cookery-gem/fpm.rb".freeze, "recipes/fpm-cookery-gem/ftw.rb".freeze, "recipes/fpm-cookery-gem/hiera.rb".freeze, "recipes/fpm-cookery-gem/http_parser.rb.rb".freeze, "recipes/fpm-cookery-gem/json.rb".freeze, "recipes/fpm-cookery-gem/json_pure.rb".freeze, "recipes/fpm-cookery-gem/puppet.rb".freeze, "recipes/fpm-cookery-gem/recipe.rb".freeze, "recipes/fpm-cookery-gem/rgen.rb".freeze, "recipes/fpm-cookery/fpm-cook.bin".freeze, "recipes/fpm-cookery/recipe.rb".freeze, "recipes/fpm-cookery/ruby.rb".freeze, "recipes/fpm/recipe.rb".freeze, "recipes/json/recipe.rb".freeze, "recipes/nodejs/recipe.rb".freeze, "recipes/omnibustest/bundler-gem.rb".freeze, "recipes/omnibustest/recipe.rb".freeze, "recipes/omnibustest/ruby.rb".freeze, "recipes/open4/recipe.rb".freeze, "recipes/redis/recipe.rb".freeze, "recipes/redis/redis-server.init.d".freeze, "spec/config_spec.rb".freeze, "spec/facts_spec.rb".freeze, "spec/fixtures/test-config-1.yml".freeze, "spec/fixtures/test-source-1.0.tar.gz".freeze, "spec/package_maintainer_spec.rb".freeze, "spec/package_spec.rb".freeze, "spec/package_version_spec.rb".freeze, "spec/path_helper_spec.rb".freeze, "spec/path_spec.rb".freeze, "spec/recipe_spec.rb".freeze, "spec/source_integrity_check_spec.rb".freeze, "spec/source_spec.rb".freeze, "spec/spec_helper.rb".freeze]
  s.homepage = "".freeze
  s.rubyforge_project = "fpm-cookery".freeze
  s.rubygems_version = "2.6.4".freeze
  s.summary = "A tool for building software packages with fpm.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fpm>.freeze, ["~> 0.4"])
      s.add_runtime_dependency(%q<facter>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<puppet>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<addressable>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<systemu>.freeze, [">= 0"])
    else
      s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<fpm>.freeze, ["~> 0.4"])
      s.add_dependency(%q<facter>.freeze, [">= 0"])
      s.add_dependency(%q<puppet>.freeze, [">= 0"])
      s.add_dependency(%q<addressable>.freeze, [">= 0"])
      s.add_dependency(%q<systemu>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<fpm>.freeze, ["~> 0.4"])
    s.add_dependency(%q<facter>.freeze, [">= 0"])
    s.add_dependency(%q<puppet>.freeze, [">= 0"])
    s.add_dependency(%q<addressable>.freeze, [">= 0"])
    s.add_dependency(%q<systemu>.freeze, [">= 0"])
  end
end
