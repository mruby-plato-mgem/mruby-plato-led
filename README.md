# mruby-plato-led   [![Build Status](https://travis-ci.org/mruby-plato/mruby-plato-led.svg?branch=master)](https://travis-ci.org/mruby-plato/mruby-plato-led)
Plato::LED class
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

  # ... (snip) ...

  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-gpio'
  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-digitalio'
  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-led'
end
```

## example
```ruby
led = Plato::LED.new(0)
loop {
  led.on
  Plato::Machine.delay(1000)
  led.off
  Plato::Machine.delay(1000)
}
```

## License
under the MIT License:
- see LICENSE file
