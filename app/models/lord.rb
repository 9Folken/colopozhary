class Lord < ActiveRecord::Base
  has_many :stuffs
  has_many :units
  
  def melee_attack(enemy)
    full_attack  =  (self.units.map { |x| x.str  }).sum
    full_defence = (enemy.units.map { |x| x.endr }).sum
    damage = -(full_defence - full_attack)
    enemy.hp = enemy.hp - damage unless damage < 0
    #enemy.hp = 2
    return  enemy.hp
  end

  

end
