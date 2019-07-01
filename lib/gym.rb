class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def my_memberships 
    Membership.all.select {|membership| membership.gym == self}
  end

  def my_lifters
    my_memberships.collect {|ship| ship.lifter}
  end 

  def my_lifters_names
    my_lifters.collect {|lifter| lifter.name}
  end

  def lift_total
    total = 0
    my_lifters.each do |lifter|
      total += lifter.lift_total
    end
    total
  end


end
