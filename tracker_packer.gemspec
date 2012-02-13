Gem::Specification.new do |s|
  s.name        = 'tracker_packer'
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.date        = '2012-02-12'
  s.summary     = "Import story templates into Pivotal Tracker"
  s.description = <<-message
  `tp` is a dead simple command-line utility for importing story templates into Pivotal Tracker.
message
  s.author      = "Kevin R. Barnes"
  s.email       = 'vinbarnes@gmail.com'
  s.executables = ['tp']
  s.files       = ['bin/tp']
  s.add_runtime_dependency 'pivotal-tracker', ['>= 0.4.1']
  s.rdoc_options = ['--exclude', 'lib']
  s.homepage    = 'https://github.com/vinbarnes/tracker_packer'
end
