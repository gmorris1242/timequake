require_relative 'lib/timequake/version'

Gem::Specification.new do |spec|
  spec.name          = "timequake"
  spec.version       = Timequake::VERSION
  spec.authors       = "George Morris"
  spec.email         = "gmorris1242@gmail.com"

  spec.summary       = "Grid and class helper css/sass library"
  spec.description   = "A lightweight css/sass framework with easy access to grids and class helpers"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
