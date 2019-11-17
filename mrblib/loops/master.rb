greeter = Greeter.new

FULL_WIDTH  = LCD::WIDTH
FULL_HEIGHT = LCD::HEIGHT
HALF_WIDTH  = FULL_WIDTH  / 2
HALF_HEIGHT = FULL_HEIGHT / 2

  loop do
    # draw striped square

    greeter.greet
    HALF_HEIGHT.times do |y|
      x = y * HALF_WIDTH / HALF_HEIGHT
      c = (y & 0xf) << 1
      LCD.fill_rect(x, y, FULL_WIDTH, FULL_HEIGHT, LCD.rgb(c, 0, 0))
    end

    greeter.greet
    HALF_HEIGHT.times do |y|
      x = y * HALF_WIDTH / HALF_HEIGHT
      c = (y & 0xf) << 1
      LCD.fill_rect(HALF_WIDTH, y, HALF_WIDTH - x, FULL_HEIGHT, LCD.rgb(0, c, 0))
    end

    greeter.greet
    HALF_HEIGHT.times do |y|
      x = y * HALF_WIDTH / HALF_HEIGHT
      c = (y & 0xf) << 1
      LCD.fill_rect(0, HALF_HEIGHT, FULL_WIDTH - x, HALF_HEIGHT - y, LCD.rgb(c, c, 0))
    end

    greeter.greet
    HALF_HEIGHT.times do |y|
      x = y * HALF_WIDTH / HALF_HEIGHT
      c = (y & 0xf) << 1
      LCD.fill_rect(x, HALF_HEIGHT, HALF_WIDTH - x, HALF_HEIGHT - y, LCD.rgb(0, 0, c))
    end


    # draw triangle

    rgb = LCD.rgb(0,0,0)

    greeter.greet
    x1 = HALF_WIDTH
    y1 = 0
    x2 = HALF_WIDTH
    y2 = HALF_HEIGHT - 1
    y3 = 0
    (HALF_WIDTH - 1).times do |x|
      LCD.fill_triangle(x1, y1, x2, y2, HALF_WIDTH + x, y3, rgb)
    end
    x1 = FULL_WIDTH - 1
    y1 = 0
    # x2 = HALF_WIDTH
    # y2 = HALF_HEIGHT - 1
    x3 = FULL_WIDTH - 1
    HALF_HEIGHT.times do |y|
      LCD.fill_triangle(x1, y1, x2, y2, x3, y, rgb)
    end

    greeter.greet
    x1 = FULL_WIDTH - 1
    y1 = HALF_HEIGHT
    x2 = HALF_WIDTH
    y2 = HALF_HEIGHT
    x3 = FULL_WIDTH - 1
    (HALF_HEIGHT - 1).times do |y|
      LCD.fill_triangle(x1, y1, x2, y2, x3, HALF_HEIGHT + y, rgb)
    end
    x1 = FULL_WIDTH - 1
    y1 = FULL_HEIGHT - 1
    # x2 = HALF_WIDTH
    # y2 = HALF_HEIGHT
    y3 = FULL_HEIGHT - 1
    HALF_WIDTH.times do |x|
      LCD.fill_triangle(x1, y1, x2, y2, FULL_WIDTH - 1 - x, y3, rgb)
    end

    greeter.greet
    x1 = HALF_WIDTH - 1
    y1 = FULL_HEIGHT - 1
    x2 = HALF_WIDTH - 1
    y2 = HALF_HEIGHT
    y3 = FULL_HEIGHT - 1
    (HALF_WIDTH - 1).times do |x|
      LCD.fill_triangle(x1, y1, x2, y2, HALF_WIDTH - 1 - x, y3, rgb)
    end
    x1 = 0
    y1 = FULL_HEIGHT - 1
    # x2 = HALF_WIDTH - 1
    # y2 = HALF_HEIGHT
    x3 = 0
    HALF_HEIGHT.times do |y|
      LCD.fill_triangle(x1, y1, x2, y2, x3, FULL_HEIGHT - 1 - y, rgb)
    end

    greeter.greet
    x1 = 0
    y1 = HALF_HEIGHT - 1
    x2 = HALF_WIDTH - 1
    y2 = HALF_HEIGHT - 1
    x3 = 0
    (HALF_HEIGHT - 1).times do |y|
      LCD.fill_triangle(x1, y1, x2, y2, x3, HALF_HEIGHT - 1 - y, rgb)
    end
    x1 = 0
    y1 = 0
    # x2 = HALF_WIDTH - 1
    # y2 = HALF_HEIGHT - 1
    y3 = 0
    HALF_WIDTH.times do |x|
      LCD.fill_triangle(x1, y1, x2, y2, x, y3, rgb)
    end

  end
