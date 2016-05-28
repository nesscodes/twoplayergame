require 'byebug'

def play_game
  player_data
  while player_alive?
  ask_player

  flip_player

  
  end
  game_over
end

def player_data

  @set_players = [
  {
    lives: 3,
    points: 0,
  },
  {
    lives: 3,
    points: 0,
  }]
  @player_index = 0

end

def ask_player
  a = rand(1..10)
  b = rand(1..10)
  solution = a + b

  puts "this is the first number"
  puts a
  puts "this is the second number"
  puts b
  puts "what is the addition?"

  if (gets.chomp).to_i == solution
    player_hash = @set_players[@player_index]
    player_hash[:points] += 1
  else
    @set_players[@player_index][:lives] -= 1
  end
end


def flip_player

  @player_index += 1
    if @player_index >= @set_players.length
    @player_index = 0
    end
end


def player_alive?
  @set_players[0][:lives] > 0 && @set_players[1][:lives] > 0
 
end

def game_over
  puts 'game over!'
end

play_game




