greeter = Greeter.new

  COLOR_BLACK = LED_MATRIX.rgb(0, 0, 0)

  COLOR_SKYBLUE    = LED_MATRIX.rgb(0x00,         0x80,         0x80)
  COLOR_LIGHT_BLUE = LED_MATRIX.rgb(0x00,         0x30,         0x80)

  COLOR_OUTER_PRIMARY   = COLOR_LIGHT_BLUE
  COLOR_OUTER_SECONDARY = COLOR_SKYBLUE
  outer = [
    {
      :color => COLOR_OUTER_PRIMARY,
      :dots => [
        [1,0], [4,1], [0,3], [3,4]
      ]
    },
    {
      :color => COLOR_OUTER_PRIMARY,
      :dots => [
        [2,0], [4,2], [0,2], [2,4]
      ]
    },
    {
      :color => COLOR_OUTER_PRIMARY,
      :dots => [
        [3,0], [4,3], [0,1], [1,4]
      ]
    },
    {
      :color => COLOR_OUTER_PRIMARY,
      :dots => [
        [4,0], [4,4], [0,0], [0,4]
      ]
    },

    {
      :color => COLOR_BLACK,
      :dots => [
        [1,0], [4,1], [0,3], [3,4]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [2,0], [4,2], [0,2], [2,4]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [3,0], [4,3], [0,1], [1,4]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [4,0], [4,4], [0,0], [0,4]
      ]
    },
  ]

  outer_single = [
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [1,0]
      ]
    },
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [2,0]
      ]
    },
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [3,0]
      ]
    },
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [4,0]
      ]
    },

=begin
    {
      :color => COLOR_BLACK,
      :dots => [
        [1,0]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [2,0]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [3,0]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [4,0]
      ]
    },
=end
    :skip, :skip, :skip, :skip,

    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [4,1]
      ]
    },
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [4,2]
      ]
    },
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [4,3]
      ]
    },
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [4,4]
      ]
    },

=begin
    {
      :color => COLOR_BLACK,
      :dots => [
        [4,1]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [4,2]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [4,3]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [4,4]
      ]
    },
=end
    :skip, :skip, :skip, :skip,

    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [3,4]
      ]
    },
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [2,4]
      ]
    },
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [1,4]
      ]
    },
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [0,4]
      ]
    },

=begin
    {
      :color => COLOR_BLACK,
      :dots => [
        [3,4]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [2,4]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [1,4]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [0,4]
      ]
    },
=end
    :skip, :skip, :skip, :skip,

    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [0,3]
      ]
    },
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [0,2]
      ]
    },
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [0,1]
      ]
    },
    {
      :color => COLOR_OUTER_SECONDARY,
      :dots => [
        [0,0]
      ]
    },

=begin
    {
      :color => COLOR_BLACK,
      :dots => [
        [0,3]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [0,2]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [0,1]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [0,0]
      ]
    },
=end
    :skip, :skip, :skip, :skip,
  ]

  COLOR_GREEN_13 = LED_MATRIX.rgb(0x00,         0x80 * 1 / 3, 0x00)
  COLOR_GREEN_23 = LED_MATRIX.rgb(0x00,         0x80 * 2 / 3, 0x00)
  COLOR_GREEN    = LED_MATRIX.rgb(0x00,         0x80,         0x00)

=begin
  middle_quad = [
    {
      :color => COLOR_GREEN_13,
      :dots => [
        [2,1], [3,2], [2,3], [1,2]
      ]
    },
    {
      :color => COLOR_GREEN_13,
      :dots => [
        [1,1], [3,1], [3,3], [1,3]
      ]
    },
    {
      :color => COLOR_GREEN_23,
      :dots => [
        [2,1], [3,2], [2,3], [1,2]
      ]
    },
    {
      :color => COLOR_GREEN_23,
      :dots => [
        [1,1], [3,1], [3,3], [1,3]
      ]
    },
    {
      :color => COLOR_GREEN,
      :dots => [
        [2,1], [3,2], [2,3], [1,2]
      ]
    },
    {
      :color => COLOR_GREEN,
      :dots => [
        [1,1], [3,1], [3,3], [1,3]
      ]
    },
    {
      :color => COLOR_GREEN_23,
      :dots => [
        [2,1], [3,2], [2,3], [1,2]
      ]
    },
    {
      :color => COLOR_GREEN_23,
      :dots => [
        [1,1], [3,1], [3,3], [1,3]
      ]
    },
    {
      :color => COLOR_GREEN_13,
      :dots => [
        [2,1], [3,2], [2,3], [1,2]
      ]
    },
    {
      :color => COLOR_GREEN_13,
      :dots => [
        [1,1], [3,1], [3,3], [1,3]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [2,1], [3,2], [2,3], [1,2]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [1,1], [3,1], [3,3], [1,3]
      ]
    },
  ]
=end

=begin
  middle_double = [
    {
      :color => COLOR_GREEN,
      :dots => [
        [2,1], [2,3],
      ]
    },
    {
      :color => COLOR_GREEN,
      :dots => [
        [1,1], [3,3],
      ]
    },
    {
      :color => COLOR_GREEN,
      :dots => [
        [1,2], [3,2],
      ]
    },
    {
      :color => COLOR_GREEN,
      :dots => [
        [1,3], [3,1],
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [2,1], [2,3],
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [1,1], [3,3],
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [1,2], [3,2],
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [1,3], [3,1],
      ]
    },
  ]
=end

  COLOR_LIGHT_GREEN    = LED_MATRIX.rgb(0x00,         0x60,         0x20)
  COLOR_LIGHT_GREEN_12 = LED_MATRIX.rgb(0x00,         0x60 * 1 / 2, 0x20 * 1 / 2)
  middle_single_a = [
    {
      :color => COLOR_LIGHT_GREEN,
      :dots => [
        [2,1]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN,
      :dots => [
        [1,1]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN,
      :dots => [
        [1,2]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN,
      :dots => [
        [1,3]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN,
      :dots => [
        [2,3]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN,
      :dots => [
        [3,3]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN,
      :dots => [
        [3,2]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN,
      :dots => [
        [3,1]
      ]
    },
  ]

  middle_single_b = [
    {
      :color => COLOR_LIGHT_GREEN_12,
      :dots => [
        [3,1]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN_12,
      :dots => [
        [2,1]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN_12,
      :dots => [
        [1,1]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN_12,
      :dots => [
        [1,2]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN_12,
      :dots => [
        [1,3]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN_12,
      :dots => [
        [2,3]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN_12,
      :dots => [
        [3,3]
      ]
    },
    {
      :color => COLOR_LIGHT_GREEN_12,
      :dots => [
        [3,2]
      ]
    },
  ]

  middle_single_c = [
    {
      :color => COLOR_BLACK,
      :dots => [
        [3,2]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [3,1]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [2,1]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [1,1]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [1,2]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [1,3]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [2,3]
      ]
    },
    {
      :color => COLOR_BLACK,
      :dots => [
        [3,3]
      ]
    },
  ]

  def blend_color(ca, cb, a, n)
    b = n - a
    return LED_MATRIX.rgb(
      (ca[0] * a + cb[0] * b) / n,
      (ca[1] * a + cb[1] * b) / n,
      (ca[2] * a + cb[2] * b) / n,
    )
  end

  C_CENTER_N = 9
  C_CENTER_A = [ 0x00, 0x80, 0x60 ]
  C_CENTER_B = [ 0x20, 0x00, 0x40 ]
  DOTS_CENTER = [[2,2]]
  COLOR_CENTER = Array.new(C_CENTER_N + 1)
  COLOR_CENTER.length.times { |n|  COLOR_CENTER[n] = blend_color(C_CENTER_A, C_CENTER_B, n, C_CENTER_N) }
  center = Array.new(C_CENTER_N * 2 * 2)
  (C_CENTER_N * 2 * 2).times { |n|  center[n] = :skip }
  C_CENTER_N.times { |n|  center[2 *  n]               = { :dots => DOTS_CENTER, :color => COLOR_CENTER[n] } }
  C_CENTER_N.times { |n|  center[2 * (n + C_CENTER_N)] = { :dots => DOTS_CENTER, :color => COLOR_CENTER[C_CENTER_N - n] } }

  demo = [
    outer, outer_single,
    middle_single_a, middle_single_b, middle_single_c,
    center,
  ]

  indexes = Array.new(demo.length)
  maxes   = Array.new(demo.length)

  demo.length.times do |n|
    indexes[n] = 0
    maxes[n]   = demo[n].length
    print indexes[n], "-", maxes[n], "\n"
  end

  LED_MATRIX.clear

#  sleep 10

  loop do
    demo.length.times do |n|
      v = demo[n][indexes[n]]
      indexes[n] = (indexes[n] + 1) % maxes[n]
      next  if :skip == v

      c = v[:color]
      v[:dots].each do |dot|
        LED_MATRIX.draw_pix(dot[0], dot[1], c)
      end
    end

    sleep 0.02

=begin
    loop do
      sleep 3600
    end
=end

  end
