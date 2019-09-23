# `Cult#name`
  # returns a `String` that is the cult's name
# `Cult#location`
  # returns a `String` that is the city where the cult is located
# `Cult#founding_year`
  # returns a `Fixnum` that is the year the cult was founded
# `Cult#slogan`
  # returns a `String` that is this cult's slogan
# `Cult#recruit_follower`
  # takes in an argument of a `Follower` instance and adds them to this cult's list of followers
# `Cult#cult_population`
  # returns a `Fixnum` that is the number of followers in this cult
# `Cult.all`
  # returns an `Array` of all the cults
# `Cult.find_by_name`
  # takes a `String` argument that is a name and returns a `Cult` instance whose name matches that argument
# `Cult.find_by_location`
  # takes a `String` argument that is a location and returns an `Array` of cults that are in that location
# `Cult.find_by_founding_year`
  # takes a `Fixnum` argument that is a year and returns all of the cults founded in that year

require 'date'
require 'time'

class Cult

    @@all = []

    attr_reader :name, :founding_date
    attr_accessor :location, :slogan #they could move or change their slogan

    def initialize(name, location, slogan)
     @founding_date = Time.now
     @name = name 
     @location = location
     @slogan = slogan
     @cults = []
     @@all.push(self)
    end 

  def founding_year
    founding_date.to_date.year
  end 

  def recruit_follower(follower_instance)
   BloodOath.new(follower_instance, self)
  end 

  def self.all 
    @@all 
  end 
 
  def cult_population
   my_followers = Follower.all.select { |follower_instance| follower_instance.cults.include?(self) }
   my_followers.length
  end 

  def self.find_by_name(name_query)
   @@all.find { |cult_instance| cult_instance.name == name_query}
  end 

  def self.find_by_location(location_query)
    @@all.select { |cult_instance| cult_instance.location == location_query}
  end 

  def self.find_by_founding_year(year_query)
   @@all.select { |cult_instance| cult_instance.founding_year == year_query }
  end 


end 