# `Follower#name`
  # returns a `String` that is the follower's name
# `Follower#age`
  # returns a `Fixnum` that is the age of the follower
# `Follower#life_motto`
  # returns a `String` that is the follower's life motto
# `Follower#cults`
  # returns an `Array` of this follower's cults
# `Follower#join_cult`
  # takes in an argument of a `Cult` instance and adds this follower to the cult's list of followers
# `Follower.all`
  # returns an `Array` of all the followers
# `Follower.of_a_certain_age`
  # takes a `Fixnum` argument that is an age and returns an `Array` of followers who are the given age or older

class Follower 

 attr_reader :name 
 attr_accessor :age, :life_motto, :cults

 @@all = []

 def initialize(name, age, life_motto)
  @name = name
  @age = age
  @life_motto = life_motto
  @cults = []
  @@all.push(self)
 end 

 def join_cult(cult_instance)
  BloodOath.new(self, cult_instance)
 end 

 def self.all 
  @@all
 end 

 def self.of_a_certain_age(age_query)
  @@all.select { |follower_instance| follower_instance.age == age_query }
 end 


end 


