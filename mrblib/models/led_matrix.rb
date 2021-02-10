class LED_MATRIX
  WIDTH  = 5
  HEIGHT = 5

  def self.rgb(r, g, b)
    r = 0xff  if 0xff < r
    g = 0xff  if 0xff < g
    b = 0xff  if 0xff < b
    return (g << 16) | (r << 8) | b
  end
end
