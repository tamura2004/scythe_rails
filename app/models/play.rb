class Play < ApplicationRecord
  belongs_to :faction
  belongs_to :nation
  has_many :turns

  def next_turn
    turns.count + 1
  end

  def power
    faction.power + turns.sum(:power)
  end
  
  def card
    faction.card + turns.sum(:card)
  end

  def popularity
    nation.popularity + turns.sum(:popularity)
  end

  def coin
    nation.coin + turns.sum(:coin)
  end

  def mech
    turns.sum(:mech)
  end

  def worker
    turns.sum(:worker) + 2
  end

  def metal
    turns.sum(:metal)
  end
  
  def oil
    turns.sum(:oil)
  end
  
  def wood
    turns.sum(:wood)
  end
  
  def food
    turns.sum(:food)
  end

  def upgrade
    turns.sum(:upgrade)
  end

  def enlist
    turns.sum(:enlist)
  end

  def structure
    turns.sum(:structure)
  end

  def label(field)
    sprintf("%s(%s)", field, send(field))
  end

end
