
class Weapons < Model

   RESULTS =  { rock:      { scissors: 'crushes',    lizard:   'crushes' },
                paper:     { spock:    'disproves',  rock:     'covers' },
                scissors:  { paper:    'cuts',       lizard:   'decapitates' },
                lizard:    { paper:    'eats',       spock:    'poisons' },
                spock:     { rock:     'vaporizes',  scissors: 'smashes' }
              }

  def self.valid?(choice)
    choice.between?(1,RESULTS.count) ? true : false
  end
end