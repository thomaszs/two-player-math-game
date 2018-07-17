require './player.rb'
require './game.rb'
require './question.rb'

player1 = Player.new(1)
player2 = Player.new(2)

game = Game.new(player1, player2)

game.start_game



