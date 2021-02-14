greeter = Greeter.new

  def blend_color(ca, cb, b, n)
    a = n - b
    return LED_MATRIX.rgb(
      (ca[0] * a + cb[0] * b) / n,
      (ca[1] * a + cb[1] * b) / n,
      (ca[2] * a + cb[2] * b) / n,
    )
  end

  r = [0x80, 0x00, 0x00]
  g = [0x00, 0x80, 0x00]
  b = [0x00, 0x00, 0x80]
  n = 8

#  sleep 10

  loop do
    greeter.greet

    n.times do |i|
      LED_MATRIX.draw_pix(0, 0, blend_color(r, g, i, n))
      sleep 0.1
    end
    n.times do |i|
      LED_MATRIX.draw_pix(0, 0, blend_color(g, b, i, n))
      sleep 0.1
    end
    n.times do |i|
      LED_MATRIX.draw_pix(0, 0, blend_color(b, r, i, n))
      sleep 0.1
    end

=begin
    loop do
      sleep 3600
    end
=end

  end
