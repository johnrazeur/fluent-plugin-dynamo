# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "fluent-plugin-dynamo"
  gem.description = "Amazon DynamoDB output plugin for Fluent event collector"
  gem.homepage    = "https://github.com/johnrazeur/fluent-plugin-dynamo"
  gem.summary     = gem.description
  gem.license     = "Apache-2.0"
  gem.version     = File.read("VERSION").strip
  gem.authors     = ["Takashi Matsuno", "Sadayuki Furuhashi", "Clément Lafont"]
  gem.email       = "lafont.clem@gmail.com"
  gem.has_rdoc    = false
  #gem.platform    = Gem::Platform::RUBY
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency "fluentd", [">= 0.14.15", "< 2"]
  gem.add_dependency "aws-sdk-dynamodb", [">= 1.0.0", "< 2"]
  gem.add_dependency "uuidtools", "~> 2.1.0"
  gem.add_development_dependency "rake", ">= 0.9.2"
  gem.add_development_dependency "test-unit", ">= 3.1.0"
end
