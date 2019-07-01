class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def new_membership(cost, gym)
   Membership.new(cost, gym, self)
  end

  def membership_list 
  Membership.all.select {|membership| membership.lifter == self}
  end

  def Lifter.average_lift_total
    sum = 0.0
      @@all.each do |lifter|
        sum += lifter.lift_total
      end
    sum/@@all.length
  end

  def membership_cost_total
    sum = 0
    membership_list.each do |membership|
      sum += membership.cost
    end
    sum
  end

  def Lifter.all  
    @@all
  end

end
