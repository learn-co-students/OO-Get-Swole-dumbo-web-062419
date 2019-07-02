# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new('Joe', 100)
lifter2 = Lifter.new('Rob', 101)
lifter3 = Lifter.new('Kevin', 1200)
lifter4 = Lifter.new('Amy', 20)
lifter5 = Lifter.new('Jeremy', 140)

gym1 = Gym.new('gym1')
gym2 = Gym.new('gym2')
gym3 = Gym.new('gym3')


membership1 = Membership.new(200, lifter1, gym1)
membership2 = Membership.new(195, lifter1, gym2)
membership3 = Membership.new(250, lifter2, gym1)
membership4 = Membership.new(90, lifter3, gym2)
membership5 = Membership.new(99, lifter2, gym3)
membership6 = Membership.new(106, lifter3, gym1)
membership7 = Membership.new(1, lifter3, gym3)



binding.pry

puts "Gains!"
