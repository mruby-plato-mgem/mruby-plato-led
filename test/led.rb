# Plato::LED class

assert('LED', 'class') do
  assert_equal(Plato::LED.class, Class)
end

assert('LED', 'superclass') do
  assert_equal(Plato::LED.superclass, Plato::DigitalIO)
end

assert('LED', 'new') do
  l1 = Plato::LED.new(0)
  l2 = Plato::LED.new(0, true)
  l3 = Plato::LED.new(0, false, :high)
  assert_true(l1 && l2 && l3)
end

assert('LED', 'new - argument error') do
  assert_raise(ArgumentError) {Plato::LED.new}
  assert_raise(ArgumentError) {Plato::LED.new(0, false, :low, 1)}
end

assert('LED', 'on/off/toggle') do
  assert_nothing_raised {
    led = Plato::LED.new(0)
    led.on
    led.off
    led.toggle
  }
end
