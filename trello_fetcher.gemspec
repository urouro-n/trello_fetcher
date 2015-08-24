# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trello_fetcher/version'

Gem::Specification.new do |s|
  s.name = "trello_fetcher"
  s.version = TrelloFetcher::VERSION
  s.authors = ["kenta.nakai"]
  s.email = ["kenta.nakai@urouro.net"]

  s.summary = "Trello Readonly Client"
  s.description = "test"
  s.homepage = "http://github.com/urouro/trello_fetcher"
  s.license = "MIT"

  s.files = Dir["lib/**/*.rb"] + %w{bin/trello_fetcher README.md LICENSE.txt}
  s.executables = %w{trello_fetcher}
  s.require_paths = ["lib"]

  s.add_dependency "highline"
  s.add_dependency "ruby-trello"
end
