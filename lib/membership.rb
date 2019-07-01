class Membership
  attr_reader :cost
  attr_accessor :gym, :lifter

  @@all = []

  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym 
    @lifter = lifter
    @@all << self
  end

  def Membership.all 
  @@all
  end
  
end
