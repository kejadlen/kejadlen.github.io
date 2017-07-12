source 'https://rubygems.org'

require 'json'
require 'open-uri'
versions = JSON.parse(open('https://pages.github.com/versions.json').read)

gem 'github-pages', versions['github-pages'], group: :jeykll_plugins
gem 'rake'

group :development do
  gem 'kramdown'
  gem 'pry'
  gem 'rerun'
  gem 'rouge'
  gem 'sinatra'
end
