class Attack < ApplicationRecord
 belongs_to :monster
 belongs_to :victim
 validate :no_asustar
 
 def no_asustar
  if monster.scare_level > 5 && victim.birthdate < 18.years
   errors.add(:monster_id, "No se pudo agregar")
  end
 end
 
end
