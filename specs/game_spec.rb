require("minitest/autorun")
require("minitest/rg")

require_relative("../game")

class GameTest < Minitest::Test

def setup
  @my_game =Game.new()
end

def test_created_an_empty_letters_guessed_array
  assert_equal(0, @my_game.guessed_letters.length() )
end

def test_letter_passed_to_guessed_letters_array
  guess = "C"
  @my_game.add_guess(guess)
  assert_equal(1, @my_game.guessed_letters.length)
end

def test_return_last_guess_in_array
  @my_game.add_guess("a")
  @my_game.add_guess("e")

  assert_equal("e", @my_game.select_last_guess)
end


end
