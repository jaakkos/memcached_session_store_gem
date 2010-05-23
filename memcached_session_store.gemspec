# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{memcached_session_store}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jaakko Suutarla"]
  s.cert_chain = ["/Users/japesuut/.gem/own-keys/gem-public_cert.pem"]
  s.date = %q{2010-05-23}
  s.description = %q{Storing Rails session with memcached while using Heroku memcache plugin.}
  s.email = %q{jaakko@suutarla.com}
  s.extra_rdoc_files = ["README.md", "lib/memcached_session_store.rb"]
  s.files = ["Manifest", "README.md", "Rakefile", "lib/memcached_session_store.rb", "memcached_session_store.gemspec"]
  s.homepage = %q{http://github.com/jaakkos/memcached_session_store_gem}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Memcached_session_store", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{memcached_session_store}
  s.rubygems_version = %q{1.3.6}
  s.signing_key = %q{/Users/japesuut/.gem/own-keys/gem-private_key.pem}
  s.summary = %q{Storing Rails session with memcached while using Heroku memcache plugin.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<memcached>, [">= 0"])
    else
      s.add_dependency(%q<memcached>, [">= 0"])
    end
  else
    s.add_dependency(%q<memcached>, [">= 0"])
  end
end
