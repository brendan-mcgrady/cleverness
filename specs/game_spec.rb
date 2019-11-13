require("minitest/autorun")
require("minitest/rg")

require_relative("../game")

class GameTest < Minitest::Test

def test_created_an_empty_letters_guessed_array
  my_game = Game.new()
  assert_equal(0, my_game.guessed_letters.length() )
end


end
