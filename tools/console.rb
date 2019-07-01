# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
gym1 = Gym.new("Bro Gym")
gym2 = Gym.new("No Bros Allowed Gym")

lifter1 = Lifter.new("Dwayne Johnson", 500)
lifter2 = Lifter.new("Arnold Schwarznegger", 600)
lifter3 = Lifter.new("Scrawny kid", 900)

membership1 = Membership.new(0, lifter3, gym1)
membership2 = Membership.new(50, lifter2, gym1)
membership3 = Membership.new(30, lifter1, gym1)

Gym.all
Lifter.all
Membership.all

binding.pry

puts "Gains!"
