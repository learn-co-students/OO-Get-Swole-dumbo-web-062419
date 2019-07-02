class Gym
  attr_reader :name

  @@gyms =[]
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@gyms
  end

  def memberships
    #lists all the memberships this gym offers
    Membership.all.select {|membership| membership.gym == self}
  end

  def members
    #gets names of all lifters who have memberships at this gym
    members = []
    memberships.each do |membership|
      if membership.gym == self
        members << membership.lifter
      end
    end
    members
  end

  def combined_lift_total
    #gets combined lift total of all lifters at this gym
    total = 0
    members.each do |member|
      total += member.lift_total
    end
    total
  end
end
