require "./players.rb"
require "./question.rb"
require "./main.rb"

player1 = Player.new
player2 = Player.new

player = 1
count = 0

# while player1.alive? && player2.alive?
while player1.lives>0 && player2.lives>0
   if player == 1
    if count != 0
    end
    question = Question.new
    puts "player 1: #{question.question}"
    answer = gets.chomp.to_i
    if answer == question.answer
      puts 'Player 1: correct'
      puts "P1 has #{player1.lives} remaining vs P2: has #{player2.lives} remaining "
      player = 2
      count +=1
    else
      player1.lives -=1
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
      puts '----- NEW TURN -----'
    end
    question = Question.new
    puts "player 2: #{question.question}"
    print ">"
    answer = gets.chomp.to_i
    if answer == question.answer
      puts "P1 has #{player1.lives} remaining vs P2: has #{player2.lives} remaining "
      player = 1
      count +=1
    else
      player2.lives -=1
      puts "Player 1: #{player1.lives} Player 2: #{player2.lives}"
      if player2.lives == 0
        break
      end
      player = 1
      count +=1
    end


  end

end

if (player1.lives == 0)
  puts "Player 2 wins #{player2.lives}/3"


end
if(player2.lives == 0)
  puts "Player 1 wins #{player1.lives}/3"


end
