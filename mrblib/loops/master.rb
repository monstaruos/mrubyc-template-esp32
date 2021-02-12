greeter = Greeter.new

  TONE = {
    :C4  =>  262,
    :D4  =>  294,
    :E4  =>  330,
    :F4  =>  349,
    :G4  =>  392,
    :A4  =>  440,
    :B4  =>  494,
    :F5  =>  698,
    :Gs5 =>  831,
    :As5 =>  932,
    :C6  => 1047,
    :Cs6 => 1109,
    :Ds6 => 1245,
    :F6  => 1397,
  }

  BUZZER.init(0, 26)
  BUZZER.mute

  loop do
    greeter.greet

    BUZZER.tone(TONE[:C4])
    sleep 0.5
    BUZZER.tone(TONE[:D4])
    sleep 0.5
    BUZZER.tone(TONE[:E4])
    sleep 0.5
    BUZZER.tone(TONE[:F4])
    sleep 0.5
    BUZZER.tone(TONE[:G4])
    sleep 0.5
    BUZZER.tone(TONE[:A4])
    sleep 0.5
    BUZZER.tone(TONE[:B4])
    sleep 0.5
    BUZZER.mute
    sleep 1

  end
