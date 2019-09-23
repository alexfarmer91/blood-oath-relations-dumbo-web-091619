# `BloodOath#initiation_date`
  # returns a `String` that is the initiation date of this blood oath in the format _YYYY-MM-DD_.
# `BloodOath.all`
  # returns an `Array` of all the blood oaths

require 'date'
require 'time'

class BloodOath

    attr_reader :initiation_date, :cult, :follower

    @@all = []

 def initialize(follower, cult)
  if Follower.all.include?(follower)
    @follower = follower 
    @cult = cult
    follower.cults.push(cult)
    initialized_at = Time.now
    @initiation_date = "#{initialized_at.to_date.year}-#{initialized_at.to_date.month.to_s.rjust(2, "0")}-#{initialized_at.to_date.day}"
    @@all.push(self) 
  else 
   puts "This follower does not exist, please initialize new follower."
  end 
 end 



 def self.all 
  @@all
 end 





end 
