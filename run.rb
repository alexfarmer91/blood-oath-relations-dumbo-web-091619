require 'time'
require 'date'
require 'pry'
require_relative './app/cult.rb'
require_relative './app/blood oath.rb'
require_relative './app/follower.rb'

creepy = Cult.new("Creepy", "Austin, TX", "Be terrible.")
silly = Cult.new("Silly", "Jacksonville, FL", "Be absolutley bizzare.")
death = Cult.new("Death", "Portland, OR", "Mmm dying.")

bob = Follower.new("Bob", 32, "Eat beans!")
jim = Follower.new("Jim", 22, "Always be sad.")
cheese = Follower.new("Cheese", 18, "It's 5 O'clock somewhere")
erica = Follower.new("Erica", 27, "Goths rule!")
lisa = Follower.new("Lisa", 29, "Nihilism!")


binding.pry
0