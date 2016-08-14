require 'rake/clean'

task default: %w[
  css/normalize.css
  _sass/bourbon
  _sass/base
]

file 'css/normalize.css' => 'vendor/normalize.css/normalize.css' do |t|
  cp t.prerequisites[0], t.name
end
CLOBBER.include('css/normalize.css')

file '_sass/bourbon' => 'vendor/bourbon/core' do |t|
  cp_r "#{t.prerequisites[0]}/.", t.name
end
CLOBBER.include('_sass/bourbon')

file '_sass/base' => 'vendor/bitters/core' do |t|
  cp_r "#{t.prerequisites[0]}/.", t.name
end
CLOBBER.include('_sass/base')
