# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Joe", 400)
l2 = Lifter.new("Jake", 350)
l3 = Lifter.new("Pat", 450)

g1 = Gym.new("Swole")
g2 = Gym.new("Kale")
g3 = Gym.new("Patrol")


m1 = Membership.new(l1, g1, 25)
m2 = Membership.new(l2, g2, 35)
m3 = Membership.new(l3, g3, 30)

binding.pry

puts "Gains!"
