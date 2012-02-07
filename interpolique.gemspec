$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "interpolique/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "interpolique"
  s.version     = Interpolique::VERSION
  s.authors     = ["Benson Kalhar"]
  s.email       = ["bensonk42@gmail.com"]
  s.homepage    = "http://github.com/bensonk/rails_interpolique"
  s.summary     = "A Proof of concept implementation of Dan Kaminsky's Interpolique"
  s.description = "Interpolique uses base64 encoding and decoding to clarify the usually fuzzy line between data and code in webapps."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"

  s.add_development_dependency "sqlite3"
end
