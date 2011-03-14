require 'rubygems'
require 'rake'
require 'rake/gempackagetask'

spec = Gem::Specification.new do |s|
  s.name = "RisParser"
  s.version = "0.1"
  s.author = "Alex Rockwell"
  s.email = "arocwkell@gmail.com"
  s.homepage = "http://alexrockwell.org"
  s.summary = "Parser for the RIS file format."
  s.files = FileList["lib/**/*"].to_a
  s.require_path = "lib"
  s.has_rdoc = false
  s.add_runtime_dependency 'treetop'
  s.add_runtime_dependency 'polyglot'
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_tar = true
end
