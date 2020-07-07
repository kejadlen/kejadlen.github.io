source 'https://rubygems.org'

require 'json'
require 'open-uri'
versions = JSON.parse(URI('https://pages.github.com/versions.json').open.read)

gem 'github-pages', versions['github-pages'], group: :jeykll_plugins
gem 'rake'

group :development do
  gem 'kramdown'
  gem 'pry'
  gem 'rerun'
  gem 'rouge'
  gem 'sinatra'
end
