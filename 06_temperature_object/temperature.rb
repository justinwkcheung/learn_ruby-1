class Temperature

  attr_accessor :temp

  @@temp = {}

  def initialize(temp)
    @temp = temp
  end

  def self.in_celsius(celsius)
    Temperature.new({:c => celsius})
  end

  def self.in_fahrenheit(fahrenheit)
    Temperature.new({:f => fahrenheit})
  end


  def to_fahrenheit
    if @temp[:c]
      (@temp[:c] * 9/5.0) + 32
    else
      @temp[:f]
    end
  end

  def to_celsius
    if @temp[:f]
      (@temp[:f] - 32) * (5/9.0)
    else
      @temp[:c]
    end

  end

end

class Celsius < Temperature

  attr_accessor :temp

  def initialize(temp)
    @temp = temp
  end

  def to_fahrenheit
    (@temp * 9/5.0) + 32
  end

  def to_celsius
    @temp
  end

end

class Fahrenheit < Temperature

  attr_accessor :temp

  def initialize(temp)
    @temp = temp
  end

  def to_fahrenheit
    @temp
  end

  def to_celsius
    (@temp - 32) * (5/9.0)
  end

end
