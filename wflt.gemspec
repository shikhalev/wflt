# encoding: utf-8

require 'set_version'
require_relative 'lib/wflt'

Gem::Specification.new do |g|

  g.name = File.basename __FILE__, ".gemspec"
  g.summary = 'Suppress warnings from gems and vendor sources'
  g.author = 'Ivan Shikhalev'
  g.email = 'shikhalev@gmail.com'
  g.homepage = 'https://github.com/shikhalev/wflt'
  g.description = g.summary + '.'
  g.license = 'LGPL-3.0'

  g.files = [ 'lib/wflt.rb', 'README.md', 'LICENSE' ]

  g.set_version(*WFlt::VERSION, git: true)

  g.require_path = 'lib'

  g.required_ruby_version = '~> 2.0'
  g.add_development_dependency 'set_version', '~> 0.1'

end

