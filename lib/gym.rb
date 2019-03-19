class Gym
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def self.all
    @@all
  end

  def get_memberships(name)
    Membership.all.select {|x| x.gym_name == name}
  end

  def get_lifters

  end

  def get_lifters_names

  end

  def get_total_lift

  end

end


# Gym

# Get a list of all gyms #### Done

# Get a list of all memberships at a specific gym 

# Get a list of all the lifters that have a membership to a specific gym

# Get a list of the names of all lifters that have a membership to that gym

# Get the combined lift total of every lifter has a membership to that gym