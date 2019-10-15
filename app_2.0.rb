require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "      ------------------------------------------------
     |       Welcome to 'ONE PIECE ROYAL BATTLE'!     |
     |     The goal is simple: BE THE LAST ONE ALIVE! |
     |         GOOD LUCK! DO YOUR BEST!               |
      ------------------------------------------------"
puts " "
puts " "
puts " "
print "Choose your character's name ---> "
user_input = gets.chomp

player1 = HumanPlayer.new(user_input)

bot1 = Player.new("Officer01")
bot2 = Player.new("Officer02")







binding.pry