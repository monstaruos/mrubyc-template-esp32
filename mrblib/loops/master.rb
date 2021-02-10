greeter = Greeter.new

  M5ENV2.init

#  sleep 10

  loop do
    ci = M5ENV2.update
    cf = ci / 65535.0 - 45

    print cf, "\n"

    sleep 5

=begin
    loop do
      sleep 3600
    end
=end

  end
