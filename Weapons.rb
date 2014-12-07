class Weapons

   RESULTS =  { rock:      { scissors: 'crushes',    lizard:   'crushes' },
                paper:     { spock:    'disproves',  rock:     'covers' },
                scissors:  { paper:    'cuts',       lizard:   'decapitates' },
                lizard:    { paper:    'eats',       spock:    'poisons' },
                spock:     { rock:     'vaporizes',  scissors: 'smashes' }
              }

  def self.array
      RESULTS.keys
  end

  def self.valid?(choice)
    choice.between?(1,RESULTS.count) ? true : false
  end

  def self.compare(user,cpu)
    user_wins = RESULTS.select {|k,v| v.key?(cpu.choice) && k == user.choice }
    cpu_wins = RESULTS.select {|k,v| v.key?(user.choice) && k == cpu.choice }
    if cpu_wins.empty?
      msg = user_wins[user.choice][cpu.choice]
      return "Your #{user.choice.capitalize} #{msg} my #{cpu.choice.capitalize} you win!"
    else
      msg = cpu_wins[cpu.choice][user.choice]
      return "My #{cpu.choice.capitalize} #{msg} your #{user.choice.capitalize} you lose!"
    end
  end  
end