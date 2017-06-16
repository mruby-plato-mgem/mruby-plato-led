#
# Plato::LED class
#
module Plato
  class LED < DigitalIO
    def initialize(pin, pullup=false, act=:low)
      super(pin, pullup, act)
      @last = :off
    end

    def on
      @active_low ? low : high
      @last = :on
    end

    def off
      @active_low ? high : low
      @last = :off
    end

    def toggle
      @last == :off ? on : off
    end
  end
end
