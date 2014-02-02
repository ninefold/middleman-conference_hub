Gem::Specification.new do |s|
  s.name        = 'middleman-conference_hub'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = "An extension for middleman for conference hubs"
  s.authors     = ["Andrew Harvey"]
  s.email       = "andrew@mootpointer.com"
  s.files       = Dir['lib/**/*.rb']
  s.homepage    = 'https://rubygems.org/ninefold/conference_hub'
  s.require_paths = ["lib"]

  s.add_dependency("middleman-core", ["~> 3.2.0"])
end
