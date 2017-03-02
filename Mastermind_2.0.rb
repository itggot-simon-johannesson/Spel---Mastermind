def Mastermind()
  system ("cls")
  rand_number_1 = rand(0..9)
  rand_number_2 = rand(0..9)
  rand_number_3 = rand(0..9)
  rand_number_4 = rand(0..9)

#  while rand_number_2 != rand_number_1
#  rand_number_2 = rand(0..9)
#  end
#
#  while rand_number_3 != rand_number_1 || rand_number_3 != rand_number_2
#  rand_number_3 = rand(0..9)
#  end
#
#  while rand_number_4 != rand_number_1 || rand_number_4 != rand_number_2 || rand_number_4 != rand_number_3
#  rand_number_4 = rand(0..9)
#  end

  correct_numbers = [rand_number_1, rand_number_2, rand_number_3, rand_number_4]
  correct_numbers_string = ""
  correct_numbers_string += correct_numbers[0].to_s
  correct_numbers_string += correct_numbers[1].to_s
  correct_numbers_string += correct_numbers[2].to_s
  correct_numbers_string += correct_numbers[3].to_s

  puts "              " + "Welcome to Mastermind!"
  puts "      " + "Guess the secret combination of 4 numbers!"
  puts "              " + "o means wrong number and"
  puts "         " + "x means right number in right position."
  puts " "

  guess = nil
  first_time = true

  while  guess != correct_numbers_string
    if first_time == true
    else
      puts "Try again!"
    end

    guess = gets.chomp

    i = 0
    true_or_false = ""
    while i < guess.length
      if guess[i] == correct_numbers_string[i]
        true_or_false += "x"
      else
        true_or_false += "o"
      end
    i += 1
    end

    system ("cls")
    puts "              " + "Welcome to Mastermind!"
    puts "      " + "Guess the secret combination of 4 numbers!"
    puts "              " + "o means wrong number and"
    puts "         " + "x means right number in right position."
    puts " "
    puts guess[0] + guess[1] + guess[2] + guess[3]
    puts true_or_false[0] + true_or_false[1] + true_or_false[2] + true_or_false[3]
    true_or_false = ""

    if guess == correct_numbers_string
      puts "Correct!"
    else
      first_time = false
    end

  end

end

Mastermind()
