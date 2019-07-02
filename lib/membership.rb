class Membership
  attr_reader :cost
  attr_accessor :lifter, :gym

  @@all_memberships =[]
  
  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    self.class.all << self
  end

  def self.all
    @@all_memberships
  end


end
