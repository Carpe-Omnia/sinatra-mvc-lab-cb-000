class PigLatinizer
  def piglatinize(text)
    ray = []
    final_text = ""
    split = text.split(' ')
    split.each do |word|
      ray << turn_word(word)
    end
    ray.each do |word|
      final_text += "#{word} "
    end
    final_text
  end

  def turn_word(word)
    turnt = [""]
    ph = 0
    dex = 0
    if is_cons(word[0]) == false
      turnt[0] = word + "way"
    else
      word.split.each do |letter|
        if ph == 0 && is_cons(letter) == true
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
