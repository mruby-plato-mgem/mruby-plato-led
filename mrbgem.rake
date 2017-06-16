MRuby::Gem::Specification.new('mruby-plato-led') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Plato developers'
  spec.description = 'Plato::LED class'

  spec.add_dependency('mruby-plato-gpio')
  spec.add_dependency('mruby-plato-digitalio')
end
