greeter = Greeter.new

while true
  greeter.greet
  x = 0
  c = 0
  loop do
    LCD.fill_rect(x, 0, LCD::WIDTH, LCD::HEIGHT, LCD.rgb(c, c, c))
    x = (x + 1) % LCD::WIDTH
    c = (c + 1) & 0x1f
  end
end
