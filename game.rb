class Game
attr_reader :guessed_letters

def initialize()
  @guessed_letters =[]
end

def add_guess(guess)
  @guessed_letters.push(guess)
end

def select_last_guess()
  return @guessed_letters.last()
end

end
