require './question.rb'
class Game
  attr_accessor :player1, :player2, :turn
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = 1
  end

  def is_game_over?
    (@player1.lives == 0) || (@player2.lives == 0)
  end


  def game_over
    if @player1.lives > @player2.lives
      puts "Player 1 wins with a score of #{@player1.lives}/3 \n"
      end_message
    else 
      puts "Player 2 wins with a score of #{@player2.lives}/3 \n"
      end_message
    end
  end

  def end_message
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
 
  def show_remaining_live
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3 \n"
    puts "----- NEW TURN -----"
  end

  def start_game
    question = Question.new
    while !is_game_over?
      if !@turn.even? 
        puts "Player 1: #{question.question}"
        if gets.chomp.to_i == question.correct_answer
          puts "Yes! You are correct."
          show_remaining_live
          @turn += 1
        else
          puts "Seriously? No!"
          player1.lives -= 1
          show_remaining_live  
          @turn += 1
        end  
      else   
        puts "Player 2: #{question.question}"
        if gets.chomp.to_i == question.correct_answer
          puts "Yes! You are correct."
          show_remaining_live
        @turn += 1
        else
          puts "Seriously? No!"
          player2.lives -= 1
          show_remaining_live  
          @turn += 1
        end      
      end
    end
    game_over
  end
end





            
        
      