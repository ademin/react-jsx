Gem::Specification.new do |s|
  s.name          = 'react-jsx'
  s.version       = '0.5.0'
  s.date          = '2013-10-16'
  s.author        = 'Alexey Demin'
  s.email         = 'demin.alexey@inbox.ru'
  s.summary       = 'Ruby React JSX Compiler'
  s.homepage      = 'https://github.com/ademin/react-jsx'
  s.license       = 'MIT'
  s.required_ruby_version = '>= 1.8.7'

  s.files         = ['lib/react/jsx.rb']

  s.add_runtime_dependency 'react-source'
  s.add_runtime_dependency 'execjs'

  s.add_development_dependency 'rspec', '~> 2.14.0'
  s.add_development_dependency 'rake'
end
