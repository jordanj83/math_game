require "./players"
require "./question"

player1 = Player.new
player2 = Player.new

player = 1
count = 0

until player1.lives == 0 && player2.lives == 0
   if player == 1
    if count != 0
    end
    question = Question.new
    puts "player 1: #{question.question}"
    print ">>"
    answer = gets.chomp.to_i
    if answer == question.answer
      puts 'Player 1: Good job!.'
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      player = 2
      count +=1
    else
      player1.lives -=1
      puts 'Player 1: loser'
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      if player1.lives == 0
        break
      end
      player = 2
      count +=1
    end

  end

  if player == 2
    if count != 0
    end
    question = Question.new
    puts "player 2: #{question.question}"
    print ">>"
    answer = gets.chomp.to_i
    if answer == question.answer
      puts 'No gong for you!'
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      player = 1
      count +=1
    else
      player2.lives -=1
      puts 'Player 2: no whammy, no whammy, no whammy'
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      if player2.lives == 0
        break
      end
      player = 1
      count +=1
    end


  end

end

if (player1.lives == 0)
  puts "You are the lizard queen! #{player2.lives}/3"
  puts '----- GAME OVER -----'
  puts 'Get lost!'
end
if(player2.lives == 0)
  puts "Welcome to the planet of the apes #{player1.lives}/3"
  puts '----- GAME OVER -----'
  puts 'Sorry lady, shows over'

end



