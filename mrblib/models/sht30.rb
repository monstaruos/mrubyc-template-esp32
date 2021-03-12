class SHT30
  def initialize(i2c)
    @i2c = i2c
  end

  def get_temp
    return @temp
  end

  def measure
    @i2c.write(0x44, [0x2c, 0x06])
    sleep 0.6

    a = @i2c.read(0x44, 6)
    @temp = ((a[0] << 8) + a[1]) * 175 / 65535.0 - 45
  end
end
