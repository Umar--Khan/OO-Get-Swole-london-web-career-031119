class Membership
  attr_accessor :lifter_name, :gym_name, :cost

  @@all =[]

  def initialize(lifter_name, gym_name, cost)
    @lifter_name = lifter_name.name
    @gym_name = gym_name.name
    @cost = cost
    self.class.all << self
  end

  def self.all
    @@all
  end

end

# Membership

# Get a list of all memberships
  