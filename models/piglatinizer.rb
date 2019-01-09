class PigLatinizer
  def piglatinize(text)
    original = text.split(' ')
    first_letter = original[0]
    inter = original[1..-1]
    final = inter + first_letter + 'ay'
    final
  end
  def turn_word(word)
    turnt = [""]
    ph = 0
    dex = 0
    if is_cons(word[0]) == false
      turnt[0] = word + "way"
    else
      word.each do |letter|
        if ph == 0 && is_cons(letter) == true
          turnt << letter
          dex += 1
        else
          ph = 1
        end
      end
      turnt[0] = word[dex..-1]
      turnt << 'ay'
    end
    value = turnt.join
    value
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
