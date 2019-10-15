require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Goku")
player2 = Player.new("Vegeta")

puts " "
puts "Ready... Steady... FIGHT!"
puts " "
puts " "

while player1.health > 0 && player2.health > 0 do
  puts "Current state of each fighter:" 
  player1.show_state
  player2.show_state
  puts " "
  player1.attacks(player2)
    if player2.health <= 0 
    break
    player2.attacks(player1)
    elsif player2.health > 0
    player2.attacks(player1)  
    end  
  puts " " 
end  

binding.pry