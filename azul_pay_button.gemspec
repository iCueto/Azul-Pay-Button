# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'azul_pay_button/version'

Gem::Specification.new do |spec|
  spec.name          = "azul_pay_button"
  spec.version       = AzulPayButton::VERSION
  spec.authors       = ["Alex Cueto"]
  spec.email         = ["cuetodev@gmail.com"]

  spec.summary       = %q{A simple gem to integrate with Azul.com.do Payment Processor}
  spec.description   = %q{A simple gem to integrate with Banco Popular Dominicano / Azul Payment Processor}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 4.2"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake"
end
