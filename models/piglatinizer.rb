class PigLatinizer
  def piglatinize(text)
    original = text.split(' ')
    first_letter = original[0]
    inter = original[1..-1]
    final = inter + first_letter + 'ay'
    final
  end
  def turn_word(word)
  end 
  def is_cons(letter)
    bin = letter.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    if bin == 0
      false
    else
      true 
    end 
  end 

        
end
