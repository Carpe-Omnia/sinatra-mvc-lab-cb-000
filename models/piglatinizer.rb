class PigLatinizer
  def piglatinize(text)
    original = text.split(' ')
    first_letter = original[0]
    inter = original[1..-1]
    final = inter + first_letter + 'ay'
    final
  end
  def turn_word(word)
    turnt = ""
    if is_cons(word[0]) == false
      turnt = word + "way"
    else 
      

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
