class LCD
  WIDTH  = 320
  HEIGHT = 240

  def self.rgb(r, g, b)
    r = 0x1f  if 0x1f < r
    g = 0x1f  if 0x1f < g
    b = 0x1f  if 0x1f < b
    return (r << 11) | (g << 6) | b
  end
end
