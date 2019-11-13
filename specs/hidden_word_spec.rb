require("minitest/autorun")
require("minitest/rg")

require_relative("../hidden_word")

class Hidden_wordTest < Minitest::Test

def test_create_hidden_word__word_equal_to_word
  word = Hidden_word.new("Clever")
  assert_equal("Clever", word.hidden_word)
end

def test_hidden_word_to_array
  word = Hidden_word.new("Clever")
  expected_value = ["C", "l", "e", "v", "e", "r"]
  assert_equal(expected_value, word.hidden_word_to_array())
end

def test_array_of_stars
  word = Hidden_word.new("Clever")
  word.hidden_word_to_array
  expected_value = ["*", "*", "*", "*", "*", "*"]
  assert_equal(expected_value, word.array_to_string())
end

# def test_word_can_be_displayed__hidden
#   word = Hidden_word.new("Clever")
#   assert_equal("******", word.display_hidden())
# end

end
