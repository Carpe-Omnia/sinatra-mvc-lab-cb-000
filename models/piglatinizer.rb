class PigLatinizer
  attr_accessor :text
  def initialize(string)
    @text = string
  end
  def pigged
    original = @text
    first_letter = original[0]
    inter = original[1..-1]
    final = inter + first_letter + 'ay'
    final
  end

end
