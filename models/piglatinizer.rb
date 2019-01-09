class PigLatinizer
  def piglatinize(text)
    ray = []
    final_text = ""
    split = text.split(' ')
    if split.size == 1
      final_text = turn_word(text)
    else
      split.each do |word|
        ray << turn_word(word)
      end
      ray.each do |word|
        if word != split[-1]
          final_text << "#{word} "
        else
          final_text << "#{word}"
        end
      end
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
      dex = first_vowel(word)
      turnt[0] = word[dex..-1]
      turnt[1] = word[0..dex-1]
      turnt << 'ay'
    end
    value = turnt.join
    value
  end

  def is_cons(letter)
    bin = letter.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    if bin == 0
      false
    else
      true
    end
  end
  def first_vowel(word)
    ph = 0
    dex = 0
    ray = word.split('')

    ray.each do |letter|
      if is_cons(letter) == true && ph == 0
        dex += 1
      else
        ph = 1
      end
    end
    dex
  end

end
porky = PigLatinizer.new
test_dex = porky.turn_word('bcdefg')
puts test_dex
#puts porky.is_cons('t')
