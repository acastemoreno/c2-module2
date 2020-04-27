class String
  def vowel?
    self.match?(/\A[aeiou]\z/i)
  end
end

p "a\na".vowel?
p "i".vowel?