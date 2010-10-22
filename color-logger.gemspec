# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{color-logger}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Evgeny Gurin"]
  s.cert_chain = ["/Users/hoblin/.ssh/gem-public_cert.pem"]
  s.date = %q{2010-10-22}
  s.description = %q{Colorized ruby logger}
  s.email = %q{evgeny.gurin@gmail.com}
  s.extra_rdoc_files = ["CHANGELOG.markdown", "README.markdown", "lib/color-logger.rb"]
  s.files = ["CHANGELOG.markdown", "Manifest", "README.markdown", "Rakefile", "color-logger.gemspec", "lib/color-logger.rb"]
  s.homepage = %q{http://github.com/hoblin/color-logger}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Color-logger", "--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{color-logger}
  s.rubygems_version = %q{1.3.7}
  s.signing_key = %q{/Users/hoblin/.ssh/gem-private_key.pem}
  s.summary = %q{Colorized ruby logger}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
