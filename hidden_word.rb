class Hidden_word
attr_reader :hidden_word

  def initialize(word)
    @hidden_word = word
  end

  def hidden_word_to_array()
    @hidden_word.chars()
  end

  def array_to_star()
    my_array = @hidden_word.hidden_word_to_array()
    for letter in @hidden_word
      letter = "*"
    end
  end

  # def display_hidden()
  #   for letter in @hidden_word
  #     return "*"
  #   end
  # end

end
