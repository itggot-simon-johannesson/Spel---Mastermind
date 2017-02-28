def Mastermind()

  correct_number = "1234"
  # list  1234
  # index 0123
  correct_values = {1 => "x", 2 => "x", 3 => "x", 4 => "x"}
  # list  xxxx
  # keys  1234
  incorrect_values = {0 => "o", 5 => "o", 6 => "o", 7 => "o", 8 => "o", 9 => "o"}
  # list  oooooo
  # keys  056789
  guess_string = ""

  puts "Welcome to Mastermind!"
  puts "Guess the secret combination!"

  guess=""

  first_time = true
  while guess != correct_number
      if first_time == true
      else
        puts "Try again!"
      end

      guess = gets.chomp
      # list  5412
      # index 0123
      # xo?   oxxx

      i = 0
      while i < guess.length
        # => puts guess[i].inspect

        if guess[i] == "1" || guess[i] == "2" || guess[i] == "3" || guess[i] == "4"
          guess_string += correct_values[1]
        else
          guess_string += incorrect_values[0]
        end
        i += 1
      end

      puts guess_string
      guess_string = ""

      if guess == correct_number
        puts "Correct!"
      else
        first_time = false
      end

  end
end

Mastermind()
