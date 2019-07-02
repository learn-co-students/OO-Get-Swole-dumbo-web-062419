class Lifter
  attr_reader :name, :lift_total

  @@lifters = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    @@lifters
  end

  def memberships
    #gets a list of all memberships this instance of lifter has
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    #gets a list of all gyms this instance of lifter has a membership to
    mygyms = []
    memberships.each do |membership|
      if membership.lifter == self
       mygyms << membership.gym
      end
    end
    mygyms
  end

  def self.average_lift_total
    #gets the average lift total of all lifters
    lift_totals = []
    self.all.each do |lifter|
      lift_totals << lifter.lift_total
    end
    lift_totals.sum/lift_totals.size
  end

  def total_membership_cost
    #total cost of this lifters gym memberships
    total_cost = []
    memberships.each do |membership|
      total_cost << membership.cost
    end
    total_cost.sum
  end

  def sign_me_up(gym, membership_cost)
    #signs this lifter up for a new gym
    Membership.new(membership_cost, self, gym)
  end

end
