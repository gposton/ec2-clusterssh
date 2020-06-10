# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ec2/clusterssh/version'

Gem::Specification.new do |spec|
  spec.name          = "ec2-clusterssh"
  spec.version       = Ec2::Clusterssh::VERSION
  spec.authors       = ["Glenn Poston"]
  spec.email         = ["gposton1040@gmail.com"]
  spec.description   = %q{Use instance tags to launch a ClusterSSH session to multiple EC2 instances.}
  spec.summary       = %q{Use instance tags to launch a ClusterSSH session to multiple EC2 instances.}
  spec.homepage      = "https://github.com/gposton/ec2-clusterssh"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'aws-sdk-ec2'
end
