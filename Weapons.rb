class Weapons < Base

   RESULTS =  { rock:      { scissors: 'crushes',    lizard:   'crushes' },
                paper:     { spock:    'disproves',  rock:     'covers' },
                scissors:  { paper:    'cuts',       lizard:   'decapitates' },
                lizard:    { paper:    'eats',       spock:    'poisons' },
                spock:     { rock:     'vaporizes',  scissors: 'smashes' }
              }

  def self.array
      RESULTS.keys
  end

  def self.valid?(weapon)
    weapon.between?(1,RESULTS.count) ? true : false
  end 
end