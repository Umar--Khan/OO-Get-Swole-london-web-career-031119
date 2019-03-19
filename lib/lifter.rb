class Lifter
  attr_accessor :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def get_memberships
    Membership.all.select {|x| x.lifter_name == @name}
  end

  def get_gyms(name)
     arr = []
      Membership.all.select do |x|
        if x.lifter_name == name
          arr << x.gym_name
        end
    end
    arr.uniq
  end

  def self.total_average
    arr = []
    all.select do |x| 
      arr << x.lift_total
    end
    (arr.inject(0){|sum,x| sum + x }) / arr.size
  end

  def get_total_cost
    get_memberships.map {|x| x.cost}.sum
  end

  def sign_up(gym_name, cost))
    Membership.new(self, gym_name, cost)
  end


end

#Lifter

# Get a list of all lifters ### Done

# Get a list of all the memberships that a specific lifter has ### Done

# Get a list of all the gyms that a specific lifter has memberships to ### Done

# Get the average lift total of all lifters

# Get the total cost of a specific lifter's gym memberships

# Given a gym and a membership cost, sign a specific lifter up for a new gym